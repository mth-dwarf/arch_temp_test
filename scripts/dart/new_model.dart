import 'package:change_case/change_case.dart';

import 'utils.dart';

Future<void> main(List<String> args) async {
  // create files
  if (args.isEmpty) throw Exception("Missing args");
  if (args.length > 1) throw Exception("Too many arguments");
  final modelName = args[0];
  final className = modelName.toPascalCase();
  final dbClassName = "${className}Db";
  final dtoClassName = "${className}Dto";
  final presentationFileName = className.toSnakeCase();
  final dbFileName = dbClassName.toSnakeCase();
  final dtoFileName = dtoClassName.toSnakeCase();
  final tableClassName = "${className}Table";

  final presentationFile =
      await createFile("lib/presentation/models/$presentationFileName.dart");
  final dbFile = await createFile("lib/data/local/tables/$dbFileName.dart");
  final dtoFile = await createFile("lib/data/remote/models/$dtoFileName.dart");
  final mapperFile = await createFile(
      "lib/domain/mappers/${className.toSnakeCase()}_mapper.dart");

  // write files
  await writeToFile(presentationFile, presentationFileContent(className));
  await writeToFile(dbFile, dbFileContent(dbClassName, tableClassName));
  await writeToFile(dtoFile, dtoFileContent(dtoClassName, dtoFileName));
  await writeToFile(
      mapperFile,
      mapperFileContent(
        dbClassName: dbClassName,
        dbFileName: dbFileName,
        dtoClassName: dtoClassName,
        dtoFileName: dtoFileName,
        presClassName: className,
        presentationFileName: presentationFileName,
      ));
  print("$className created successfully");
  print("Please add $tableClassName to tables-list in @DriftDatabase(tables: [..., $tableClassName]) and the build runner");
}

String presentationFileContent(String className) {
  return """
class $className {
  final String id;
  
  $className({
    required this.id,
  });
}
  """
      .trim();
}

String dtoFileContent(String className, String fileName) {
  return """
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luxplus_app/presentation/utils/json_utils.dart';

part '../../../_generated/data/remote/models/$fileName.g.dart';

@JsonSerializable()
class $className {
  final String id;
  
  $className({
    required this.id,
  });
  
  factory $className.fromJson(Json json) => _\$${className}FromJson(json);
  
  Json toJson() => _\$${className}ToJson(this);
}
  """
      .trim();
}

String dbFileContent(String className, String tableName) {
  return """
import 'package:drift/drift.dart';
  
@DataClassName("$className")
class $tableName extends Table {
  TextColumn get uid => text().unique()();

  TextColumn get json => text()();
}
  """
      .trim();
}

String mapperFileContent({
  required String presClassName,
  required String dtoClassName,
  required String dbClassName,
  required String dbFileName,
  required String dtoFileName,
  required String presentationFileName,
}) {
  return """
import 'dart:convert';

import 'package:luxplus_app/data/local/database/luxplus_database.dart';
import 'package:luxplus_app/data/remote/models/$dtoFileName.dart';
import 'package:luxplus_app/presentation/models/$presentationFileName.dart';

extension ${dtoClassName}Mapper on $dtoClassName {

  $presClassName to$presClassName() {
    return $presClassName(id: id);
  }
  
  $dbClassName toDb() {
    final json = jsonEncode(toJson());
    return $dbClassName(uid: id, json: json);
  }
}

extension ${dtoClassName}ListMapper on Iterable<$dtoClassName> {
  Iterable<$presClassName> to${presClassName}List() {
    return map((productDto) => productDto.to$presClassName());
  }
  
  Iterable<$dbClassName> toDbList() {
    return map((productDto) => productDto.toDb());
  }
}


extension ${dbClassName}Mapper on $dbClassName {
  $presClassName to$presClassName() {
    return $dtoClassName.fromJson(jsonDecode(this.json)).to$presClassName();
  }
}

extension ${dbClassName}ListMapper on Iterable<$dbClassName> {
  Iterable<$presClassName> to${presClassName}List() {
    return map((db) => db.to$presClassName());
  }
}
  """
      .trim();
}
