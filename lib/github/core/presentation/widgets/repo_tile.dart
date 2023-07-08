import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:repo_viewer/core/presentation/presentation.dart';
import 'package:repo_viewer/github/core/core.dart';

class RepoTile extends StatelessWidget {
  final Repository repo;

  const RepoTile({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(repo.name),
      subtitle: Text(
        repo.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Hero(
        tag: repo.fullName,
        child: CircleAvatar(
          backgroundImage:
              CachedNetworkImageProvider(repo.owner.avatarUrlThumb),
          backgroundColor: Colors.transparent,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.star_border),
          Text(
            repo.stars.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      onTap: () {
        AutoRouter.of(context).push(RepoDetailsRoute(repo: repo));
      },
    );
  }
}
