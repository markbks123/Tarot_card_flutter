import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController instance = Get.find();

  void navigatetoPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed('/home');
    });
  }

  @override
  onInit() {
    super.onInit();
    navigatetoPage();
  }
}
