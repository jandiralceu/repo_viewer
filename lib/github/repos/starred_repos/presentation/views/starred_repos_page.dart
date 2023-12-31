import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../auth/auth.dart';
import '../../../../../core/core.dart';
import '../../../../../search/presentation/presentation.dart';
import '../../../../core/core.dart';

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

    Future.microtask(
      () => ref
          .read(starredReposNotifierProvider.notifier)
          .getNextStarredReposPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AppSearchBar(
        title: context.i18n.starredRepositories,
        hint: context.i18n.searchAllRepositories,
        onSignOut: () => ref.read(authNotifierProvider.notifier).signOut(),
        onShouldNavigateToResultPage: (term) {
          context.router.push(SearchedReposRoute(searchTerm: term));
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
