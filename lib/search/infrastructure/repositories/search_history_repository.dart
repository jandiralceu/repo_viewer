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

  Future<void> addSearchTerm(String term) async {
    await _store.add(_sembastDatabase.instance, term);
    final count = await _store.count(_sembastDatabase.instance);

    if (count > historyLength) {
      await _store.delete(
        _sembastDatabase.instance,
        finder: Finder(limit: count - historyLength, offset: 0),
      );
    }
  }
}
