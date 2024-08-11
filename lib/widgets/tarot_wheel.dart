import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/utility/controllers.dart';
import 'package:tarot_card_deck/utility/theme.dart';
import 'package:tarot_card_deck/widgets/card.dart';

class TarotWheelPage extends StatefulWidget {
  @override
  _TarotWheelPageState createState() => _TarotWheelPageState();
}

class _TarotWheelPageState extends State<TarotWheelPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late List<CardWidget> _cards;
  bool _isDragging = false;
  Map<int, Offset> _cardOffsets = {};
  Map<int, FlipCardController> _flipControllers = {};
  Set<int> _flippedCards = {};
  late List<bool> _flipStates;
  late List<int> _cardOrder; // Track card order for shuffling

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 2 * pi).animate(_controller);

    _initializeCards(); // Initialize cards first
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _initializeCards() {
    _cardOrder =
        List.generate(cardPickerController.card.length, (index) => index);
    _cardOrder.shuffle(); // Shuffle cards

    setState(() {
      // Initialize flip states
      _flipStates = List.generate(
        _cardOrder.length,
        (index) => false,
      );

      _cards = List.generate(_cardOrder.length, (index) {
        final shuffledIndex = _cardOrder[index];
        final flipController = FlipCardController();
        _flipControllers[shuffledIndex] = flipController;
        _cardOffsets[shuffledIndex] = Offset.zero;

        return CardWidget(
          frontWidget: cardPickerController.card[shuffledIndex].frontWidget,
          backWidget: cardPickerController.card[shuffledIndex].backWidget,
          controller: flipController,
          isFlippable: _flipStates[shuffledIndex],
          name: cardPickerController.card[shuffledIndex].name,
          description: cardPickerController
              .card[shuffledIndex].description, // Initial state
        );
      });
    });
  }

  void _startDragging(int index) {
    setState(() {
      _isDragging = true;
      _controller.stop();
    });
  }

  void _endDragging(int index) {
    setState(() {
      _isDragging = false;
      _controller.repeat();
      if (_flipControllers[index] != null) {
        _flipControllers[index]?.flipcard();
        _flippedCards.add(index);
      }
    });
  }

  void _resetCards() {
    // setState(() {
    //   _cardOffsets = Map.fromIterable(
    //     _cardOffsets.keys,
    //     value: (_) => Offset.zero,
    //   );
    //   _flippedCards.clear();
    //   // Reset FlipCardControllers to show back side
    //   _flipControllers.forEach((index, controller) {
    //     // Ensure the card is showing the back side
    //     if (_flipStates[index]) {}
    //   });
    // });
    Get.offAllNamed('/cardpicker');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.gold,
        title: Text('Tarot Wheel'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetCards,
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.taronBack.path),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: List.generate(_cards.length, (index) {
              final double angle = (index * (2 * pi / _cards.length));
              final double radius = 150.0;

              final double x = radius * cos(angle);
              final double y = radius * sin(angle);

              final cardOffset = _cardOffsets[_cardOrder[index]] ?? Offset.zero;

              return Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: Offset(x + cardOffset.dx, y + cardOffset.dy),
                  child: GestureDetector(
                    onPanStart: (_) => _startDragging(_cardOrder[index]),
                    onPanUpdate: (details) {
                      if (_isDragging) {
                        setState(() {
                          _cardOffsets[_cardOrder[index]] =
                              details.localPosition;
                        });
                      }
                    },
                    onPanEnd: (_) => _endDragging(_cardOrder[index]),
                    child: _cards[index], // Use the updated CardWidget list
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
