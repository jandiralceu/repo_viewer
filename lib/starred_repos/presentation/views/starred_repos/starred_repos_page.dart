import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../auth/auth.dart';

@RoutePage()
class StarredReposPage extends ConsumerWidget {
  const StarredReposPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(authNotifierProvider.notifier).signOut();
          },
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
