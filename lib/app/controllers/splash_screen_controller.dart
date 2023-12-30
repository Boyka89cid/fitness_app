import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_now/app/routes/pages_route_names.dart';

class SplashScreenController extends FullLifeCycleController with GetSingleTickerProviderStateMixin{

  RxBool showText = false.obs;
  late AnimationController animationController;
  late Animation animation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 2000));
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
  }

  canShowText(){
    showText.value = !showText.value;
    animationController.forward().whenComplete(() => Get.toNamed(RouteName.home));
  }

}