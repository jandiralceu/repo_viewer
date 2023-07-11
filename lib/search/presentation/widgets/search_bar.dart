import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

import '../../shared/shared.dart';

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
      automaticallyImplyBackButton: false,
      leadingActions: AutoRouter.of(context).canNavigateBack
          ? [
              IconButton(
                onPressed: () => AutoRouter.of(context).pop(),
                icon: Icon(
                  Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                ),
              )
            ]
          : null,
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
            AppLocalizations.of(context)!.tapToSearch,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      hint: widget.hint,
      body: FloatingSearchBarScrollNotifier(child: widget.body),
      onQueryChanged: (query) {
        ref
            .read(searchHistoryNotifierProvider.notifier)
            .watchSearchTerms(filter: query);
      },
      onSubmitted: _pushPageAndAddTermToHistory,
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
        return Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).cardColor,
          child: Consumer(
            builder: (context, ref, child) {
              final searchHistory = ref.watch(searchHistoryNotifierProvider);

              return searchHistory.map(
                data: (history) {
                  final query = _searchBarController.query;

                  if (query.isEmpty && history.value.isEmpty) {
                    return Container(
                      height: 56,
                      alignment: Alignment.center,
                      child: Text(
                        'Start searching...',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    );
                  } else if (history.value.isEmpty) {
                    return ListTile(
                      title: Text(query),
                      leading: const Icon(Icons.search),
                      onTap: () {
                        _pushPageAndAddTermToHistory(query);
                      },
                    );
                  }

                  return Column(
                    children: history.value
                        .map(
                          (term) => ListTile(
                            title: Text(
                              term,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            leading: const Icon(Icons.history),
                            trailing: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                ref
                                    .read(
                                      searchHistoryNotifierProvider.notifier,
                                    )
                                    .deleteSearchTerm(term);
                              },
                            ),
                            onTap: () {
                              widget.onShouldNavigateToResultPage(term);
                              ref
                                  .read(searchHistoryNotifierProvider.notifier)
                                  .putSearchTermFirst(term);

                              _searchBarController.close();
                            },
                          ),
                        )
                        .toList(),
                  );
                },
                error: (_) => const ListTile(title: Text('Try again later.')),
                loading: (_) =>
                    const ListTile(title: LinearProgressIndicator()),
              );
            },
          ),
        );
      },
    );
  }

  void _pushPageAndAddTermToHistory(String term) {
    widget.onShouldNavigateToResultPage(term);
    ref.read(searchHistoryNotifierProvider.notifier).addSearchTerm(term);

    _searchBarController.close();
  }
}
