import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/core.dart';
import '../../../../application/application.dart';

class PaginatedReposListView extends StatefulWidget {
  const PaginatedReposListView({
    super.key,
  });

  @override
  State<PaginatedReposListView> createState() => _PaginatedReposListViewState();
}

class _PaginatedReposListViewState extends State<PaginatedReposListView> {
  bool canLoadNextPage = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(starredReposNotifierProvider);

        ref.listen<StarredReposState>(
          starredReposNotifierProvider,
          (__, newState) {
            newState.map(
              initial: (_) => canLoadNextPage = true,
              loading: (_) => canLoadNextPage = false,
              data: (_) => canLoadNextPage = _.isNextPageAvailable,
              failure: (_) => canLoadNextPage = false,
            );
          },
        );

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (canLoadNextPage && metrics.pixels >= limit) {
              canLoadNextPage = false;
              ref
                  .read(starredReposNotifierProvider.notifier)
                  .getNextStarredReposPage();
            }

            return false;
          },
          child: _PaginatedListView(state: state),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    required this.state,
  });

  final StarredReposState state;

  @override
  Widget build(BuildContext context) {
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
            return index < _.repos.entity.length
                ? _buildRepoTile(_.repos.entity[index])
                : const LoadingRepoTile();
          },
          data: (_) {
            return _buildRepoTile(_.repos.entity[index]);
          },
          failure: (_) {
            return index < _.repos.entity.length
                ? _buildRepoTile(_.repos.entity[index])
                : FailureRepoTile(failure: _.failure);
          },
        );
      },
    );
  }

  Widget _buildRepoTile(Repository repo) => RepoTile(
        title: repo.name,
        description: repo.description,
        avatarUrl: repo.owner.avatarUrlThumb,
        starts: repo.stars,
      );
}
