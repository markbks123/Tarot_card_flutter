import 'package:flutter/material.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/utility/theme.dart';
import 'package:tarot_card_deck/widgets/loading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.logo.image(
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          const Loading()
        ],
      ),
    );
  }
}
