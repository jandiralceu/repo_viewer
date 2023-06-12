// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:repo_viewer/core/core.dart';
import 'package:sembast/sembast.dart';

import '../../../../../core/core.dart';

class StarredReposLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('starredRepos');

  StarredReposLocalService(this._sembastDatabase);

  Future<void> upsertPage({
    required List<RepositoryDTO> repos,
    required int page,
  }) async {
    final sembastPage = page - 1;

    await _store
        .records(
          repos.mapIndexed(
            (index, _) => index + PaginationConfig.itemsPerPage * sembastPage,
          ),
        )
        .put(
          _sembastDatabase.instance,
          repos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<RepositoryDTO>> getPage(int page) async {
    final sembastPage = page - 1;

    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        limit: PaginationConfig.itemsPerPage,
        offset: PaginationConfig.itemsPerPage * sembastPage,
      ),
    );

    return records.map((e) => RepositoryDTO.fromJson(e.value)).toList();
  }
}
