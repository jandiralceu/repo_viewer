import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Future<void> showNoConnectionToast(
  BuildContext context, {
  required String message,
}) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return FlashBar(
        controller: controller,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        icon: const Icon(MdiIcons.accessPointNetworkOff),
        iconColor: Colors.white,
        backgroundColor: Colors.red,
      );
    },
  );
}
