import 'dart:io';

Future<File> createFile(String path) async {
  final file = File(path);
  if (file.existsSync()) throw Exception("File already exists");
  await file.create(recursive: true);
  return file;
}

Future<void> writeToFile(File file, String content) async {
  var sink = file.openWrite();
  sink.write(content);
  await sink.flush();
  await sink.close();
}