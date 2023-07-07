import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';
import '../dtos/dtos.dart';

class RepoDetailsLocalService {
  static const cacheSize = 50;

  final AppLocalDatabase _sembastDatabase;
  final GithubHeadersCache _headersCache;

  final _store = stringMapStoreFactory.store('repoDetails');

  RepoDetailsLocalService(this._sembastDatabase, this._headersCache);

  Future<void> upsertRepoDetails(RepoDetailsDTO repoDetails) async {
    final keys = await _store.findKeys(
      _sembastDatabase.instance,
      finder: Finder(
        sortOrders: [
          SortOrder(RepoDetailsDTO.lastUsedFieldName, false),
        ],
      ),
    );

    if (keys.length == cacheSize) {
      final keysToRemove = keys.sublist(cacheSize);

      for (final key in keysToRemove) {
        await _store.record(key).delete(_sembastDatabase.instance);
        await _headersCache.deleteHeaders(
          Uri.https('api.github.com', '/repos/$key/readme'),
        );
      }
    }

    await _store
        .record(repoDetails.repositoryFullname)
        .put(_sembastDatabase.instance, repoDetails.toJson());
  }

  Future<RepoDetailsDTO?> getRepoDetails(String repositoryFullname) async {
    final record = _store.record(repositoryFullname);

    await record.update(
      _sembastDatabase.instance,
      {RepoDetailsDTO.lastUsedFieldName: Timestamp.now()},
    );

    final snapshot = await record.getSnapshot(_sembastDatabase.instance);

    if (snapshot == null) return null;

    return RepoDetailsDTO.fromSembast(snapshot);
  }
}
