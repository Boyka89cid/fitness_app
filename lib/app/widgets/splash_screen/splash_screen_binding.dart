import 'package:get/get.dart';
import 'package:test_now/app/controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController(), fenix: true);
  }

}