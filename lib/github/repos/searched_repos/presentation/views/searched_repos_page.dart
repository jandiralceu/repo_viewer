import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../auth/auth.dart';
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
          .getNextSearchedReposPage(widget.searchTerm),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.searchTerm),
        actions: [
          IconButton(
            icon: const Icon(MdiIcons.logoutVariant),
            onPressed: () {
              ref.read(authNotifierProvider.notifier).signOut();
            },
          )
        ],
      ),
      body: PaginatedReposListView(
        paginatedReposNotifierProvider: searchedReposNotifierProvider,
        getNextPage: (WidgetRef ref) {
          ref
              .read(searchedReposNotifierProvider.notifier)
              .getNextSearchedReposPage(widget.searchTerm);
        },
        noResultMessage: "This is all we could find for your search term.",
      ),
    );
  }
}
