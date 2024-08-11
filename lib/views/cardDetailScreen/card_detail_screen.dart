import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/utility/theme.dart';
import 'package:tarot_card_deck/widgets/custom_text.dart';

class CardDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;

  const CardDetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorResources.gold,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.taronBack.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  imageAsset,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16),
              CustomText(
                text: title,
                color: ColorResources.white1,
                size: FontSizes.sizeLg,
                weight: FontWeight.bold,
              ),
              SizedBox(height: 25),
              CustomText(
                text: description,
                color: ColorResources.white1,
                size: FontSizes.sizeLg,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
