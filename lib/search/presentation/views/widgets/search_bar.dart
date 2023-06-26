import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
