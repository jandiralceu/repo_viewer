import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

part 'css.dart';

@RoutePage()
class RepoDetailsPage extends ConsumerStatefulWidget {
  final Repository repo;

  const RepoDetailsPage({super.key, required this.repo});

  @override
  _RepoDetailsPageState createState() => _RepoDetailsPageState();
}

class _RepoDetailsPageState extends ConsumerState<RepoDetailsPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => ref
          .read(repoDetailsNotifierProvider.notifier)
          .getRepoDetails(widget.repo.fullName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(repoDetailsNotifierProvider);

    ref.listen<RepoDetailsState>(
      repoDetailsNotifierProvider,
      (state, _) {
        state?.maybeWhen(
          orElse: () {},
          success: (details, __) {
            if (!details.isFresh) {
              showNoConnectionToast(
                context,
                message: "You're not online. Some information may be outdated!",
              );
            }
          },
        );
      },
    );

    return WillPopScope(
      onWillPop: () async {
        if (state.hasStarredStatusChanged) {
          ref
              .read(starredReposNotifierProvider.notifier)
              .getFirstStarredReposPage();
        }

        return true;
      },
      child: Scaffold(
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
          actions: [
            state.maybeMap(
              orElse: () => Shimmer.fromColors(
                baseColor: Colors.grey.shade400,
                highlightColor: Colors.grey.shade300,
                child: IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: null,
                  disabledColor: context.theme.iconTheme.color,
                ),
              ),
              success: (_) {
                return IconButton(
                  icon: Icon(_getStarredOrUnStarredIcon(_.repoDetails)),
                  onPressed: !_.repoDetails.isFresh
                      ? null
                      : () => ref
                          .read(repoDetailsNotifierProvider.notifier)
                          .switchStarredStatus(),
                );
              },
            ),
          ],
        ),
        body: state.map(
          initial: (value) => Container(),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (_) {
            if (_.repoDetails.entity == null) {
              return const NoResultPage(
                message:
                    'These are approximately all the details we could find about this repo right now.',
              );
            }

            return WebViewWidget(
              controller: WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..loadHtmlString('''
                    <!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title></title>
                        $repoDetailsCss
                    </head>
                    <body>
                      ${_.repoDetails.entity!.htmlContent}
                    </body>
                    </html>
                  ''')
                ..setNavigationDelegate(
                  NavigationDelegate(
                    onNavigationRequest: (request) {
                      if (request.url.startsWith('http')) {
                        url_launcher.launchUrl(Uri.parse(request.url));
                        return NavigationDecision.prevent;
                      }

                      return NavigationDecision.navigate;
                    },
                  ),
                ),
            );
          },
          failure: (_) => Center(
            child: Text(_.failure.toString()),
          ),
        ),
      ),
    );
  }

  /// Get starred icon
  IconData _getStarredOrUnStarredIcon(Fresh<RepoDetails?> details) {
    if (!details.isFresh) {
      return MdiIcons.starRemoveOutline;
    }

    return details.entity?.isStarred == true ? Icons.star : Icons.star_outline;
  }
}
