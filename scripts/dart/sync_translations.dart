import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';

String translationsUrl(String apiKey) {
  return "https://docs.google.com/spreadsheets/d/1B8RojNR8oZCFalXFgS7MsgoBG_H34YjBCwy4SAE9TLM/gviz/tq?tqx=out:csv&sheet=imported&key=$apiKey";
}

Future loadApiKeyFromSecrets() async {
  final dotEnvFile = File("dotenv/.production.env");
  final lines = await dotEnvFile.readAsLines();
  final apiKey = lines.firstWhere(
    (line) => line.startsWith("GOOGLE_SHEETS_API_KEY"),
  );
  return apiKey.split("=")[1];
}

Future<void> main() async {
  final http = HttpClient();
  final apiKey = await loadApiKeyFromSecrets();
  print("Loading google sheet...");
  final response = await http.getUrl(Uri.parse(translationsUrl(apiKey)));
  print("Writing data to memory...");
  final responseBody = await response.close();
  print("Decoding data...");
  final buffer = StringBuffer();
  final data = await responseBody.transform(utf8.decoder).toList();
  buffer.writeAll(data);
  final dataString = buffer.toString();
  final enArb = File("lib/_localisation/intl_en.arb");
  final daArb = File("lib/_localisation/intl_da.arb");
  final svArb = File("lib/_localisation/intl_sv.arb");
  final noArb = File("lib/_localisation/intl_no.arb");
  final nlArb = File("lib/_localisation/intl_nl.arb");
  final fiArb = File("lib/_localisation/intl_fi.arb");
  final csvList = CsvToListConverter().convert(
    dataString,
    fieldDelimiter: ',',
    textDelimiter: '"',
    eol: '\n',
  );
  final Map<String, dynamic> enJson = {};
  final Map<String, dynamic> daJson = {};
  final Map<String, dynamic> svJson = {};
  final Map<String, dynamic> noJson = {};
  final Map<String, dynamic> nlJson = {};
  final Map<String, dynamic> fiJson = {};
  for (var i = 1; i < csvList.length; i++) {
    final row = csvList[i];
    final key = row[0];
    final en = row[1];
    final da = row[2];
    final sv = row[3];
    final no = row[4];
    final nl = row[5];
    final fi = row[6];
    enJson[key] = _parseValue(en);
    daJson[key] = _parseValue(da);
    svJson[key] = _parseValue(sv);
    noJson[key] = _parseValue(no);
    nlJson[key] = _parseValue(nl);
    fiJson[key] = _parseValue(fi);
  }

  final encoder = JsonEncoder.withIndent("  ");
  await enArb.writeAsString(encoder.convert(enJson));
  await daArb.writeAsString(encoder.convert(daJson));
  await svArb.writeAsString(encoder.convert(svJson));
  await noArb.writeAsString(encoder.convert(noJson));
  await nlArb.writeAsString(encoder.convert(nlJson));
  await fiArb.writeAsString(encoder.convert(fiJson));
  print("Complete");
}

String _parseValue(String value) {
  if(value.contains("\\n")) {
    return value.replaceAll("\\n", "\n");
  }
  return value;
}
