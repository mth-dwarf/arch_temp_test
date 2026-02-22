import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final enArb = File("lib/_localisation/intl_en.arb");
  final daArb = File("lib/_localisation/intl_da.arb");
  final svArb = File("lib/_localisation/intl_sv.arb");
  final noArb = File("lib/_localisation/intl_no.arb");
  final csv = File("lib/_localisation/all_translations.csv");

  final enContent = await enArb.readAsString();
  final daContent = await daArb.readAsString();
  final svContent = await svArb.readAsString();
  final noContent = await noArb.readAsString();

  final enJson = jsonDecode(enContent) as Map;
  final daJson = jsonDecode(daContent) as Map;
  final svJson = jsonDecode(svContent) as Map;
  final noJson = jsonDecode(noContent) as Map;

  final Map<String, dynamic> daSorted = {};
  final Map<String, dynamic> svSorted = {};
  final Map<String, dynamic> noSorted = {};

  final builder = StringBuffer();
  builder.writeln("\"key\",\"en\",\"da\",\"sv\",\"no\"");

  // check if all keys exist
  for (final key in enJson.keys) {
    if (daJson.containsKey(key)) {
      daSorted[key] = daJson[key];
    } else {
      daSorted[key] = "\"\"";
      print("DA - Missing key: $key");
    }
    if (svJson.containsKey(key)) {
      svSorted[key] = svJson[key];
    } else {
      svSorted[key] = "\"\"";
      print("SV - Missing key: $key");
    }
    if (noJson.containsKey(key)) {
      noSorted[key] = noJson[key];
    } else {
      noSorted[key] = "\"\"";
      print("NO - Missing key: $key");
    }
    builder.writeln(
      "\"$key\",\"${parsedValue(enJson[key])}\",\"${parsedValue(daJson[key])}\",\"${parsedValue(svJson[key])}\",\"${parsedValue(noJson[key])}\"",
    );
  }

  final encoder = JsonEncoder.withIndent("  ");
  await daArb.writeAsString(encoder.convert(daSorted));
  await svArb.writeAsString(encoder.convert(svSorted));
  await noArb.writeAsString(encoder.convert(noSorted));
  await csv.writeAsString(builder.toString());
  print("Complete");
}

String parsedValue(String value) {
  if (value.contains("\n")) {
    return value.replaceAll("\n", "\\n");
  }
  return value;
}
