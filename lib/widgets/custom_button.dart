import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tarot_card_deck/utility/theme.dart';
import 'package:tarot_card_deck/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? txtColor;
  final Color? bgColor;
  final Color? shadowColor;
  final void Function() onTap;
  const CustomButton(
      {super.key,
      required this.text,
      this.txtColor,
      this.bgColor,
      this.shadowColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(24),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: bgColor ?? ColorResources.grey2,
            ),
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              child: CustomText(
                text: text,
                color: txtColor ?? ColorResources.white1,
                size: FontSizes.sizeLg,
                weight: FontWeight.normal,
              ),
            )),
      ),
    );
  }
}
