import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppLocalDatabase {
  late Database _instance;
  Database get instance => _instance;
  final dbName = 'repo_viewer.db';

  var _hasBeenInitialized = false;

  Future<void> init() async {
    if (_hasBeenInitialized) return;

    _hasBeenInitialized = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);

    final dbPath = join(dbDirectory.path, dbName);
    _instance = await databaseFactoryIo.openDatabase(dbPath);
  }
}
