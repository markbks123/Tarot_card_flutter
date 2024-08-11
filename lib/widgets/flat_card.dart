import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that arranges its children in a horizontal line with potential overlap,
/// while supporting drag-and-drop functionality to reorder the children.
class FlatCard extends StatefulWidget {
  /// The widgets to be displayed in the fan.
  final List<Widget> children;

  /// Creates a flat card fan.
  const FlatCard({Key? key, required this.children}) : super(key: key);

  @override
  _FlatCardFanState createState() => _FlatCardFanState();
}

class _FlatCardFanState extends State<FlatCard> {
  late List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _children = widget.children;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        _children.length,
        (index) => Align(
          alignment: Alignment(
            _children.length > 1
                ? -1.0 + (index / (_children.length - 1)) * 2.0
                : 0,
            0,
          ),
          child: Draggable<int>(
            data: index,
            feedback: Material(
              type: MaterialType.transparency,
              child: _children[index],
            ),
            childWhenDragging: Opacity(
              opacity: 0.5,
              child: _children[index],
            ),
            child: DragTarget<int>(
              onAccept: (receivedIndex) {
                setState(() {
                  // Swap the cards in the list
                  final draggedItem = _children[receivedIndex];
                  _children[receivedIndex] = _children[index];
                  _children[index] = draggedItem;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return _children[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}
