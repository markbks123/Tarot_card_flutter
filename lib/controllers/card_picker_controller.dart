import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:get/get.dart';
import 'package:tarot_card_deck/gen/assets.gen.dart';
import 'package:tarot_card_deck/models/card_model.dart';

class CardPickerController extends GetxController {
  static CardPickerController instance = Get.find();

  void navigatetoPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed('/home');
    });
  }

  FlipCardController con0 = FlipCardController();
  final con1 = FlipCardController();
  final con2 = FlipCardController();
  final con3 = FlipCardController();
  final con4 = FlipCardController();
  final con5 = FlipCardController();
  final con6 = FlipCardController();
  final con7 = FlipCardController();
  final con8 = FlipCardController();
  final con9 = FlipCardController();
  final con10 = FlipCardController();
  final con11 = FlipCardController();
  final con12 = FlipCardController();
  final con13 = FlipCardController();
  final con14 = FlipCardController();
  final con15 = FlipCardController();
  final con16 = FlipCardController();
  final con17 = FlipCardController();
  final con18 = FlipCardController();
  final con19 = FlipCardController();
  final con20 = FlipCardController();
  final con21 = FlipCardController();
  final con22 = FlipCardController();
  final con23 = FlipCardController();
  final con24 = FlipCardController();
  final con25 = FlipCardController();
  final con26 = FlipCardController();
  final con27 = FlipCardController();
  final con28 = FlipCardController();
  final con29 = FlipCardController();
  final con30 = FlipCardController();
  final con31 = FlipCardController();
  final con32 = FlipCardController();
  final con33 = FlipCardController();
  final con34 = FlipCardController();
  final con35 = FlipCardController();
  final con36 = FlipCardController();
  final con37 = FlipCardController();
  final con38 = FlipCardController();
  final con39 = FlipCardController();
  final con40 = FlipCardController();
  final con41 = FlipCardController();
  final con42 = FlipCardController();
  final con43 = FlipCardController();
  final con44 = FlipCardController();
  final con45 = FlipCardController();
  final con46 = FlipCardController();
  final con47 = FlipCardController();
  final con48 = FlipCardController();
  final con49 = FlipCardController();
  final con50 = FlipCardController();
  final con51 = FlipCardController();
  final con52 = FlipCardController();
  final con53 = FlipCardController();
  final con54 = FlipCardController();
  final con55 = FlipCardController();
  final con56 = FlipCardController();
  final con57 = FlipCardController();
  final con58 = FlipCardController();
  final con59 = FlipCardController();
  final con60 = FlipCardController();
  final con61 = FlipCardController();
  final con62 = FlipCardController();
  final con63 = FlipCardController();
  final con64 = FlipCardController();
  final con65 = FlipCardController();
  final con66 = FlipCardController();
  final con67 = FlipCardController();
  final con68 = FlipCardController();
  final con69 = FlipCardController();
  final con70 = FlipCardController();
  final con71 = FlipCardController();
  final con72 = FlipCardController();
  final con73 = FlipCardController();
  final con74 = FlipCardController();
  final con75 = FlipCardController();
  final con76 = FlipCardController();
  final con77 = FlipCardController();

  final List<CardModel> card = [
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a0.path,
      description: 'New beginnings, taking risks, carefree attitude',
      name: 'The Fool',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a1.path,
      description: 'Mastery, skill, success, control',
      name: 'The Magician',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a2.path,
      description: 'Mystery, intuition, inner knowledge',
      name: 'The High Priestess',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a3.path,
      description: 'Fertility, motherhood, abundance, love',
      name: 'The Empress',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a4.path,
      description: 'Stability, authority, control, leadership',
      name: 'The Emperor',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a5.path,
      description: 'Tradition, education, religious beliefs',
      name: 'The Hierophant',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a6.path,
      description: 'Love, choices, harmony, partnership',
      name: 'The Lovers',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a7.path,
      description: 'Determination, willpower, success, movement',
      name: 'The Chariot',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a8.path,
      description: 'Courage, patience, inner strength, control',
      name: 'Strength',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a10.path,
      description: 'Solitude, introspection, searching for truth',
      name: 'The Hermit',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a11.path,
      description: 'Destiny, cycles, change, fortune',
      name: 'Wheel of Fortune',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a12.path,
      description: 'Fairness, balance, justice, decision-making',
      name: 'Justice',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a13.path,
      description: 'Suspension, new perspective, sacrifice',
      name: 'The Hanged Man',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a14.path,
      description: 'Endings, transformation, new beginnings, change',
      name: 'Death',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a15.path,
      description: 'Balance, moderation, harmony, self-control',
      name: 'Temperance',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a16.path,
      description: 'Bondage, addiction, materialism, restriction',
      name: 'The Devil',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a17.path,
      description: 'Sudden change, upheaval, chaos, destruction',
      name: 'The Tower',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a18.path,
      description: 'Illusion, confusion, mystery, dreams',
      name: 'The Moon',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a19.path,
      description: 'Joy, success, positivity, enlightenment',
      name: 'The Sun',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a20.path,
      description: 'Rebirth, judgment, inner calling, absolution',
      name: 'Judgement',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a21.path,
      description: 'Completion, fulfillment, achievement, wholeness',
      name: 'The World',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a22.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a23.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a24.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a25.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a26.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a27.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a28.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a29.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a30.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a31.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a32.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a33.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a34.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a35.path,
      description: 'Symbolizes fire, ambition, creativity, action',
      name: 'Wands',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a36.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a37.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a38.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a39.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a40.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a41.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a42.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a43.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a44.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a45.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a46.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a47.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a48.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a49.path,
      description: 'Symbolizes earth, wealth, finances, security',
      name: 'Pentacles',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a50.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a51.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a52.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a53.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a54.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a55.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a56.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a57.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a58.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a59.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a60.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a61.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a62.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a63.path,
      description: 'Symbolizes water, emotions, love, relationships',
      name: 'Cups',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a64.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a65.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a66.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a67.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a68.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a69.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a70.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a71.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a72.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a73.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a74.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a75.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a76.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
    CardModel(
      backWidget: Assets.images.taronBack.path,
      frontWidget: Assets.images.a77.path,
      description: 'Symbolizes air, thoughts, decisions, conflicts',
      name: 'Swords',
    ),
  ];

  @override
  onInit() {
    super.onInit();
    navigatetoPage();
  }
}
