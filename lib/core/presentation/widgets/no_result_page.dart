import 'package:flutter/material.dart';

class NoResultPage extends StatelessWidget {
  final String message;

  const NoResultPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.data_object_rounded, size: 80),
          const SizedBox(height: 20),
          Text(
            message,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
