import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';
import '../../repos/repos.dart';
import '../infrastructure/infrastructure.dart';

final githubHeaderCacheProvider = Provider(
  (ref) => GithubHeadersCache(ref.watch(sembastProvider)),
);

final starredReposLocalServiceProvider = Provider(
  (ref) => StarredReposLocalService(ref.watch(sembastProvider)),
);

final starredReposRemoteServiceProvider = Provider(
  (ref) => StarredReposRemoteService(
    dio: ref.watch(dioProvider),
    headersCache: ref.watch(githubHeaderCacheProvider),
  ),
);

final starredReposRepositoryProvider = Provider(
  (ref) => StarredReposRepository(
    localService: ref.watch(starredReposLocalServiceProvider),
    remoteService: ref.watch(starredReposRemoteServiceProvider),
  ),
);

final starredReposNotifierProvider = StateNotifierProvider.autoDispose<
    StarredReposNotifier, PaginatedReposState>(
  (ref) => StarredReposNotifier(ref.watch(starredReposRepositoryProvider)),
);

final searchedReposRemoteServiceProvider = Provider(
  (ref) => SearchedReposRemoteService(
    dio: ref.watch(dioProvider),
    headersCache: ref.watch(githubHeaderCacheProvider),
  ),
);

final searchedReposRepositoryProvider = Provider(
  (ref) => SearchedReposRepository(
    remoteService: ref.watch(searchedReposRemoteServiceProvider),
  ),
);

final searchedReposNotifierProvider = StateNotifierProvider.autoDispose<
    SearchedReposNotifier, PaginatedReposState>(
  (ref) => SearchedReposNotifier(ref.watch(searchedReposRepositoryProvider)),
);
