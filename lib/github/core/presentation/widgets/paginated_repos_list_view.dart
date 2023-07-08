import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:repo_viewer/github/github.dart';

import '../../../../core/core.dart';
import '../../core.dart';

class PaginatedReposListView extends StatefulWidget {
  /// Paginated repos notifier provider
  final AutoDisposeStateNotifierProvider<PaginatedReposNotifier,
      PaginatedReposState> paginatedReposNotifierProvider;

  /// Get next page
  final void Function(WidgetRef ref) getNextPage;

  /// No result message
  final String noResultMessage;

  const PaginatedReposListView({
    super.key,
    required this.paginatedReposNotifierProvider,
    required this.getNextPage,
    required this.noResultMessage,
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
        final state = ref.watch(widget.paginatedReposNotifierProvider);

        ref.listen<PaginatedReposState>(
          widget.paginatedReposNotifierProvider,
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
              widget.getNextPage(ref);
            }

            return false;
          },
          child: state.maybeWhen(
            orElse: () => false,
            data: (repos, _) => repos.entity.isEmpty,
          )
              ? NoResultPage(message: widget.noResultMessage)
              : _PaginatedListView(state: state),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  final PaginatedReposState state;

  const _PaginatedListView({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final topSpacing = FloatingSearchBar.of(context)?.widget.height;
    final topPadding = MediaQuery.of(context).padding.top;

    return ListView.builder(
      padding: topSpacing == null
          ? EdgeInsets.zero
          : EdgeInsets.only(top: topSpacing + 8 + topPadding),
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
                ? RepoTile(repo: _.repos.entity[index])
                : const LoadingRepoTile();
          },
          data: (_) {
            return RepoTile(repo: _.repos.entity[index]);
          },
          failure: (_) {
            return index < _.repos.entity.length
                ? RepoTile(repo: _.repos.entity[index])
                : FailureRepoTile(failure: _.failure);
          },
        );
      },
    );
  }
}
