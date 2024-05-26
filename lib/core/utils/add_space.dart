import 'package:flutter/material.dart';
/// Add vertical space
Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}
/// Add horizontal space
Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
/// Add space
Widget addSpace({double height = 0, double width = 0}) {
  return SizedBox(height: height, width: width);
}