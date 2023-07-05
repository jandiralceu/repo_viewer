import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

import '../../../shared/shared.dart';

typedef NavCallback = void Function(String term);
typedef SignOutCallback = void Function();

class AppSearchBar extends ConsumerStatefulWidget {
  final String title;
  final String hint;
  final Widget body;
  final NavCallback onShouldNavigateToResultPage;
  final SignOutCallback onSignOut;

  const AppSearchBar({
    super.key,
    required this.title,
    required this.hint,
    required this.body,
    required this.onSignOut,
    required this.onShouldNavigateToResultPage,
  });

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<AppSearchBar> {
  late FloatingSearchBarController _searchBarController;

  @override
  void initState() {
    super.initState();

    _searchBarController = FloatingSearchBarController();

    Future.microtask(
      () => ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms(),
    );
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      controller: _searchBarController,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Tap to search ☝️',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      hint: widget.hint,
      body: FloatingSearchBarScrollNotifier(child: widget.body),
      onSubmitted: (term) {
        widget.onShouldNavigateToResultPage(term);
        ref.read(searchHistoryNotifierProvider.notifier).addSearchTerm(term);

        _searchBarController.close();
      },
      actions: [
        FloatingSearchBarAction.searchToClear(showIfClosed: false),
        FloatingSearchBarAction(
          child: IconButton(
            icon: const Icon(MdiIcons.logoutVariant),
            splashRadius: 18,
            onPressed: () {
              // widget.onSignOut();
            },
          ),
        )
      ],
      builder: (context, transition) {
        return Consumer(
          builder: (context, ref, child) {
            final searchHistory = ref.watch(searchHistoryNotifierProvider);

            return searchHistory.map(
              data: (history) {
                return Column(
                  children: history.value
                      .map((term) => ListTile(title: Text(term)))
                      .toList(),
                );
              },
              error: (_) => const ListTile(title: Text('Try again later.')),
              loading: (_) => const ListTile(title: LinearProgressIndicator()),
            );
          },
        );
      },
    );
  }
}
