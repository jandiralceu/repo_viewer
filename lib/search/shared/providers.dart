import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';
import '../application/application.dart';
import '../infrastructure/infrastructure.dart';

final searchHistoryRepositoryProvider = Provider(
  (ref) => SearchHistoryRepository(ref.watch(sembastProvider)),
);

final searchHistoryNotifierProvider =
    StateNotifierProvider<SearchHistoryNotifier, AsyncValue<List<String>>>(
  (ref) => SearchHistoryNotifier(ref.watch(searchHistoryRepositoryProvider)),
);
