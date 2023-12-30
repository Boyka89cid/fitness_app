import 'package:get/get.dart';
import 'package:test_now/app/controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController(), fenix: true);
  }

}