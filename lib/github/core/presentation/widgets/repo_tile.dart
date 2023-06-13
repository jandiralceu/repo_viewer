import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RepoTile extends StatelessWidget {
  final String title;
  final String description;
  final String avatarUrl;
  final int starts;

  const RepoTile({
    super.key,
    required this.title,
    required this.description,
    required this.avatarUrl,
    required this.starts,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(
        description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(avatarUrl),
        backgroundColor: Colors.transparent,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.star_border),
          Text(
            starts.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      onTap: () {
        // TODO: Go to details page
      },
    );
  }
}
