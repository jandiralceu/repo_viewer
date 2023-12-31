import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../auth/auth.dart';
import '../../../../../core/presentation/presentation.dart';
import '../../../../../search/search.dart';
import '../../../../core/core.dart';

@RoutePage()
class SearchedReposPage extends ConsumerStatefulWidget {
  final String searchTerm;

  const SearchedReposPage({super.key, required this.searchTerm});

  @override
  _SearchedReposPageState createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends ConsumerState<SearchedReposPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => ref
          .read(searchedReposNotifierProvider.notifier)
          .getFirstSearchedReposPage(widget.searchTerm),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSearchBar(
        title: widget.searchTerm,
        hint: 'Search all repositories',
        onSignOut: () => ref.read(authNotifierProvider.notifier).signOut(),
        onShouldNavigateToResultPage: (term) {
          context.router.pushAndPopUntil(
            SearchedReposRoute(searchTerm: term),
            predicate: (route) => route.settings.name == StarredReposRoute.name,
          );
        },
        body: PaginatedReposListView(
          paginatedReposNotifierProvider: searchedReposNotifierProvider,
          getNextPage: (WidgetRef ref) {
            ref
                .read(searchedReposNotifierProvider.notifier)
                .getNextSearchedReposPage(widget.searchTerm);
          },
          noResultMessage: "This is all we could find for your search term.",
        ),
      ),
    );
  }
}
