import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/core.dart';

class PaginatedReposListView extends StatelessWidget {
  const PaginatedReposListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(starredReposNotifierProvider);

        return ListView.builder(
          itemCount: state.map(
            initial: (_) => 0,
            loading: (_) => _.repos.entity.length + _.itemsPerPage,
            data: (_) => _.repos.entity.length,
            failure: (_) => _.repos.entity.length + 1,
          ),
          itemBuilder: (context, index) {
            return state.map(
              initial: (_) => const SizedBox.shrink(),
              loading: (_) => const SizedBox.shrink(),
              data: (_) => RepoTile(
                title: _.repos.entity[index].name,
                description: _.repos.entity[index].description,
                avatarUrl: _.repos.entity[index].owner.avatarUrlThumb,
                starts: _.repos.entity[index].stars,
              ),
              failure: (_) => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
