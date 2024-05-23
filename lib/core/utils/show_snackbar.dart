import 'package:flutter/material.dart';
/// [showSnackbar] is a function that shows a snackbar with the given content.
void showSnackbar(BuildContext context, String content) {
  ScaffoldMessenger.of(context)
    ..hideCurrentMaterialBanner()
    ..showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
}
