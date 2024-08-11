import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarot_card_deck/controllers/card_picker_controller.dart';
import 'package:tarot_card_deck/controllers/splash_controller.dart';
import 'package:tarot_card_deck/routes.dart';
import 'package:tarot_card_deck/views/cardPickerScreen/card_picker_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SplashScreenController());
  Get.put(CardPickerController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Your Project Name",
      initialRoute: "/",
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
