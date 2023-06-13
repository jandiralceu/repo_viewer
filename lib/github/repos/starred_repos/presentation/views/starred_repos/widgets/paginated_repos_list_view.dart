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
              loading: (_) {
                if (index < _.repos.entity.length) {
                  final currentRepo = _.repos.entity[index];

                  return RepoTile(
                    title: currentRepo.name,
                    description: currentRepo.description,
                    avatarUrl: currentRepo.owner.avatarUrlThumb,
                    starts: currentRepo.stars,
                  );
                } else {
                  return const LoadingRepoTile();
                }
              },
              data: (_) {
                final currentRepo = _.repos.entity[index];

                return RepoTile(
                  title: currentRepo.name,
                  description: currentRepo.description,
                  avatarUrl: currentRepo.owner.avatarUrlThumb,
                  starts: currentRepo.stars,
                );
              },
              failure: (_) {
                if (index < _.repos.entity.length) {
                  final currentRepo = _.repos.entity[index];

                  return RepoTile(
                    title: currentRepo.name,
                    description: currentRepo.description,
                    avatarUrl: currentRepo.owner.avatarUrlThumb,
                    starts: currentRepo.stars,
                  );
                } else {
                  return FailureRepoTile(failure: _.failure);
                }
              },
            );
          },
        );
      },
    );
  }
}
