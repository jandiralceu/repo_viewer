import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
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
      onSubmitted: widget.onShouldNavigateToResultPage,
      builder: (context, transition) {
        return Container();
      },
    );
  }
}
