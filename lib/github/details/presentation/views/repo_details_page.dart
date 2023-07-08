import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/core.dart';

@RoutePage()
class RepoDetailsPage extends ConsumerStatefulWidget {
  final Repository repo;

  const RepoDetailsPage({super.key, required this.repo});

  @override
  _RepoDetailsPageState createState() => _RepoDetailsPageState();
}

class _RepoDetailsPageState extends ConsumerState<RepoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
              tag: widget.repo.fullName,
              child: CircleAvatar(
                radius: 16,
                backgroundImage: CachedNetworkImageProvider(
                  widget.repo.owner.avatarUrlThumb,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(child: Text(widget.repo.name))
          ],
        ),
      ),
      // body: Container(),
    );
  }
}
