// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:json_annotation/json_annotation.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class CardModel {
  final String frontWidget;
  final String backWidget;
  final String description;
  final String name;

  CardModel(
      {required this.frontWidget,
      required this.backWidget,
      required this.description,
      required this.name});
}
