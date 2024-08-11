import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Assets.images.fortune.image(
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: CustomButton(
                      text: "See the Future",
                      onTap: () {
                        Get.offAllNamed('/cardpicker');
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
