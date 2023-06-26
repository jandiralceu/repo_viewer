import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../auth/auth.dart';
import '../../../../../../core/core.dart';
import '../../../../../../search/presentation/presentation.dart';
import '../../../../../core/core.dart';

@RoutePage()
class StarredReposPage extends ConsumerStatefulWidget {
  const StarredReposPage({super.key});

  @override
  _StarredReposPageState createState() => _StarredReposPageState();
}

class _StarredReposPageState extends ConsumerState<StarredReposPage> {
  @override
  void initState() {
    super.initState();

    // Future.microtask(
    //   () => ref
    //       .read(starredReposNotifierProvider.notifier)
    //       .getNextStarredReposPage(),
    // );
    ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSearchBar(
        title: 'Starred repositories',
        hint: 'Search all repositories',
        onSignOut: () => ref.read(authNotifierProvider.notifier).signOut(),
        onShouldNavigateToResultPage: (term) {
          AutoRouter.of(context).push(
            SearchedReposRoute(searchTerm: term),
          );
        },
        body: PaginatedReposListView(
          paginatedReposNotifierProvider: starredReposNotifierProvider,
          getNextPage: (WidgetRef ref) {
            ref
                .read(starredReposNotifierProvider.notifier)
                .getNextStarredReposPage();
          },
          noResultMessage:
              "That's about everything we could find in your starred repos right now.",
        ),
      ),
    );
  }
}
