import 'package:get/get.dart';
import 'package:tarot_card_deck/views/cardDetailScreen/card_detail_screen.dart';
import 'package:tarot_card_deck/views/cardPickerScreen/card_picker_screen.dart';
import 'package:tarot_card_deck/views/home/home_screen.dart';
import 'package:tarot_card_deck/views/splashScreen/splash_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/cardpicker', page: () => const CardPickerScreen()),
  ];
}
