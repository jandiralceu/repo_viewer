import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/core.dart';
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
  var _canLoadNextPage = false;
  var _hasActiveToast = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(starredReposNotifierProvider);

        ref.listen<StarredReposState>(
          starredReposNotifierProvider,
          (__, newState) {
            newState.map(
              initial: (_) => _canLoadNextPage = true,
              loading: (_) => _canLoadNextPage = false,
              data: (_) {
                if (!_.repos.isFresh && !_hasActiveToast) {
                  _hasActiveToast = true;

                  showNoConnectionToast(
                    context,
                    message:
                        "You're not online. Some information may be outdated!",
                  );
                }

                return _canLoadNextPage = _.isNextPageAvailable;
              },
              failure: (_) => _canLoadNextPage = false,
            );
          },
        );

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final metrics = notification.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;

            if (_canLoadNextPage && metrics.pixels >= limit) {
              _canLoadNextPage = false;
              ref
                  .read(starredReposNotifierProvider.notifier)
                  .getNextStarredReposPage();
            }

            return false;
          },
          child: state.maybeWhen(
            orElse: () => false,
            data: (repos, _) => repos.entity.isEmpty,
          )
              ? const NoResultPage(
                  message:
                      "That's about everything we could find in your starred repos right now.",
                )
              : _PaginatedListView(state: state),
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
