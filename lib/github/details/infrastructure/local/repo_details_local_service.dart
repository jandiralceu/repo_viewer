import 'package:sembast/sembast.dart';

import '../../../../core/core.dart';
import '../dtos/dtos.dart';

class RepoDetailsLocalService {
  static const cacheSize = 50;

  final AppLocalDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('repoDetails');

  RepoDetailsLocalService(this._sembastDatabase);

  Future<void> upsertRepoDetails(RepoDetailsDTO repoDetails) async {
    await _store
        .record(repoDetails.repositoryFullname)
        .put(_sembastDatabase.instance, repoDetails.toJson());
  }

  Future<RepoDetailsDTO?> getRepoDetails(String repositoryFullname) async {
    final snapshot = await _store
        .record(repositoryFullname)
        .getSnapshot(_sembastDatabase.instance);

    if (snapshot == null) return null;

    return RepoDetailsDTO.fromSembast(snapshot);
  }
}
