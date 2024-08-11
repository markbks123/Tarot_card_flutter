import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tarot_card_deck/views/cardDetailScreen/card_detail_screen.dart';

class CardWidget extends StatefulWidget {
  final String frontWidget;
  final String backWidget;
  final FlipCardController controller;
  final bool isFlippable;
  final String name;
  final String description;

  const CardWidget({
    super.key,
    required this.frontWidget,
    required this.backWidget,
    required this.controller,
    required this.name,
    required this.description,
    this.isFlippable = false,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isFlippable
          ? () => widget.controller.flipcard // Use flip method
          : null,
      onDoubleTap: () {
        Get.to(CardDetailScreen(
            title: widget.name,
            description: widget.description,
            imageAsset: widget.frontWidget));
      },
      child: FlipCard(
        rotateSide: RotateSide.right,
        onTapFlipping: widget.isFlippable,
        backWidget: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            widget.frontWidget,
            fit: BoxFit.contain,
          ),
        ),
        frontWidget: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            widget.backWidget,
            fit: BoxFit.contain,
          ),
        ),
        controller: widget.controller,
      ),
    );
  }
}
