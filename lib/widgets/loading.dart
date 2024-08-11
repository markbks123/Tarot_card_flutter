import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tarot_card_deck/utility/theme.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResources.white1,
      child: const SpinKitFadingCircle(
        color: ColorResources.black1,
        size: 32,
      ),
    );
  }
}
