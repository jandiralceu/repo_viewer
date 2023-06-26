import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/shared.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({super.key});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
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
