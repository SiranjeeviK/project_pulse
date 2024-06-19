import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// [pickImage] is a function that allows the user to pick an image from the gallery.
Future<File?> pickImage() async {
  try {
    final xFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (xFile != null) {
      return File(xFile.path);
    }

    return null;
  } catch (e, stackTrace) {
    debugPrintStack(
      label: e.toString(),
      stackTrace: stackTrace,
    );
    return null;
  }
}
