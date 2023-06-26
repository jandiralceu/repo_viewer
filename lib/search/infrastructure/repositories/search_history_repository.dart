import 'package:sembast/sembast.dart';

import '../../../core/core.dart';

class SearHistoryRepository {
  final AppLocalDatabase _sembastDatabase;
  final _store = StoreRef<int, String>("searchHistory");

  SearHistoryRepository(this._sembastDatabase);

  static const historyLength = 20;

  Stream<List<String>> watchSearchTerms({String? filter}) {
    return _store
        .query(
          finder: filter != null && filter.isNotEmpty
              ? Finder(
                  filter: Filter.custom(
                    (record) => (record.value! as String).startsWith(filter),
                  ),
                )
              : null,
        )
        .onSnapshots(_sembastDatabase.instance)
        .map((records) => records.reversed.map((e) => e.value).toList());
  }

  Future<void> addSearchTerm(String term) =>
      _addSearchTerm(term, _sembastDatabase.instance);

  Future<void> deleteSearchTerm(String term) =>
      _deleteSearchTerm(term, _sembastDatabase.instance);

  Future<void> putSearchTermFirst(String term) async {
    await _sembastDatabase.instance.transaction(
      (transaction) async {
        await _deleteSearchTerm(term, transaction);
        await _addSearchTerm(term, transaction);
      },
    );
  }

  Future<void> _addSearchTerm(String term, DatabaseClient dbclient) async {
    final hasTerm = await _store.findKey(
      dbclient,
      finder: Finder(
        filter: Filter.custom(
          (record) => record.value == term,
        ),
      ),
    );

    if (hasTerm != null) {
      putSearchTermFirst(term);
      return;
    }

    await _store.add(dbclient, term);
    final count = await _store.count(dbclient);

    if (count > historyLength) {
      await _store.delete(
        dbclient,
        finder: Finder(limit: count - historyLength, offset: 0),
      );
    }
  }

  Future<void> _deleteSearchTerm(String term, DatabaseClient dbclient) async {
    await _store.delete(
      dbclient,
      finder: Finder(
        filter: Filter.custom(
          (record) => record.value == term,
        ),
      ),
    );
  }
}
