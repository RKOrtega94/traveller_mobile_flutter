import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> initDatabase() async {
  return await openDatabase(
    join(await getDatabasesPath(), 'traveller.db'),
    version: 1,
    onCreate: (db, version) {},
  );
}
