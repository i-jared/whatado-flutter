import 'dart:io';

import 'package:http/io_client.dart';
import 'package:http/http.dart' as http;

Future<int> main(List<String> args) async {
  final address = args[0];

  try {
    await fetchSchema(address);
    await runBuildRunner();
    return 0;
  } catch (e) {
    print(e.toString());
    return 1;
  }
}

Future<void> createIfMissing(File file) async {
  final fileExists = await file.exists();
  if (!fileExists) {
    await file.create(recursive: true);
    await file.writeAsString('');
  }
}

Future<void> fetchSchema(String address) async {
  print('Pulling schema from $address');
  final response = await request(address);

  if (response.statusCode == 200) {
    final schema = response.body;

    print('Downloaded schema');

    final schemaFile = File('./graphql/schema.graphql');
    await createIfMissing(schemaFile);

    final oldschema = await schemaFile.readAsString();
    if (oldschema != schema) {
      await schemaFile.writeAsString(schema);

      print("Saved updated schema to '${schemaFile.path}'");
    } else {
      print('Schemas match; no need to update');
    }
  } else {
    throw Exception(
        'Failed to request schema; status code ${response.statusCode}');
  }
}

Future<http.Response> request(String address) async {
  final client = IOClient(HttpClient());
  return await client.get(Uri.parse(address));
}

Future<void> runBuildRunner() async {
  final process = await Process.start(
    'flutter',
    [
      'pub',
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
    ],
    runInShell: true,
  );

  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    // await saveChecksum('');
    throw Exception('build runner process failed');
  }
}
