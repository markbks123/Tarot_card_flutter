import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/utility/controllers.dart';
import 'package:tarot_card_deck/utility/size.dart';
import 'package:tarot_card_deck/widgets/card.dart';
import 'package:tarot_card_deck/widgets/flat_card.dart';
import 'package:tarot_card_deck/widgets/tarot_wheel.dart';

class CardPickerScreen extends StatefulWidget {
  const CardPickerScreen({super.key});

  @override
  State<CardPickerScreen> createState() => _CardPickerScreenState();
}

class _CardPickerScreenState extends State<CardPickerScreen> {
  bool isCardDropped = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Expanded(child: TarotWheelPage())],
        ),
      ),
    );
  }
}
