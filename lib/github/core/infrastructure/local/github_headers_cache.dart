import 'package:sembast/sembast.dart';

import '../../../../core/core.dart';
import '../dtos/dtos.dart';

class GithubHeadersCache {
  final AppLocalDatabase _database;
  final _store = stringMapStoreFactory.store('headers');

  GithubHeadersCache(this._database);

  Future<void> saveHeaders(Uri uri, RemoteHeaders headers) async {
    await _store.record(uri.toString()).put(
          _database.instance,
          headers.toJson(),
        );
  }

  Future<RemoteHeaders?> getHeaders(Uri uri) async {
    final json = await _store.record(uri.toString()).get(_database.instance);

    return json == null ? null : RemoteHeaders.fromJson(json);
  }

  Future<void> deleteHeaders(Uri uri) async {
    await _store.record(uri.toString()).delete(_database.instance);
  }
}
