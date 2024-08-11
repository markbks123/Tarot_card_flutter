import 'package:flutter/material.dart';

class ScreenSize {
  final BuildContext context;

  ScreenSize(this.context);

  double get width {
    return MediaQuery.of(context).size.width;
  }

  double get height {
    return MediaQuery.of(context).size.width;
  }
}
