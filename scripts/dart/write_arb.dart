import 'dart:convert';
import 'dart:io';
import 'package:change_case/change_case.dart';
import 'package:json_pretty/json_pretty.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) throw Exception("Missing args");
  if (args.length > 1) throw Exception("Too many args");
  final keys = args.first.split(",");
  final enArb = File("lib/_localisation/intl_en.arb");
  final daArb = File("lib/_localisation/intl_da.arb");
  final svArb = File("lib/_localisation/intl_sv.arb");
  final noArb = File("lib/_localisation/intl_no.arb");

  final enContent = await enArb.readAsString();
  final json = jsonDecode(enContent) as Map;

  final argsFormatted = keys.map((arg) => arg.trim().toSnakeCase()).toList();
  for (final key in argsFormatted) {
    if (json.containsKey(key)) {
      throw Exception("Key $key already exists");
    }
  }

  printKeys(argsFormatted);
  await _addKeysToArb(enArb, argsFormatted);
  await _addKeysToArb(daArb, argsFormatted);
  await _addKeysToArb(svArb, argsFormatted);
  await _addKeysToArb(noArb, argsFormatted);
  print("Keys added successfully");
}

Future<void> _addKeysToArb(File arbFile, List<String> keys) async {
  final content = await arbFile.readAsString();
  final json = jsonDecode(content) as Map;
  for (final key in keys) {
    json[key] = "";
  }

  final encoder = JsonEncoder.withIndent("  ");
  await arbFile.writeAsString(encoder.convert(json));
}

Future<void> printKeys(List<String> args) async {
  final json = <String, dynamic>{};
  for (final arg in args) {
    json[arg] = "";
  }
  print("Adding keys:");
  print(prettyPrintJson(jsonEncode(json)));
}
