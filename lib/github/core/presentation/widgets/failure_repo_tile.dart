import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

class FailureRepoTile extends ConsumerWidget {
  final GithubFailure failure;

  const FailureRepoTile({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: context.theme.colorScheme.onError,
      iconColor: context.theme.colorScheme.onError,
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        color: context.theme.colorScheme.error,
        child: ListTile(
          title: const Text('An error ocurred, please, retry.'),
          subtitle: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            failure.map(
              api: (_) => 'API returns ${_.errorCode}',
            ),
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context
                  .findAncestorWidgetOfExactType<PaginatedReposListView>()
                  ?.getNextPage(ref);
            },
          ),
        ),
      ),
    );
  }
}
