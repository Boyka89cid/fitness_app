import 'export_files_splash_view.dart';

class SplashScreenView extends StatelessWidget{
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<SplashScreenController>(
          builder:(SplashScreenController splashScreenController) {
            return
              Scaffold(
                body: FlutterSplashScreen.fadeIn(//TODO USE GIF INSTEAD
                    useImmersiveMode: true,
                    backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
                    animationDuration: const Duration(milliseconds: 2000),
                    onAnimationEnd: ()=> splashScreenController.canShowText(),
                    childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Get.isDarkMode?
                          AppSVGWidget.svgPicture(path: AssetString.boozinLogoDarkModePath, height: 80.h, width: 185.w, color: null)
                          :
                          AppSVGWidget.svgPicture(path: AssetString.boozinLogoPath, height: 80.h, width: 185.w, color: null),
                          SizedBox(height: 10.h),
                          Obx(() =>
                          splashScreenController.showText.isTrue?
                              SizedBox(
                                height: 26.h,
                                child: FadeTransition(
                                  opacity: splashScreenController.animationController,
                                  child: Text(
                                      TextConstants.fitness,
                                      style: TextStyle(
                                          color: Get.isDarkMode? Colors.white : Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24.sp,
                                          fontFamily: "Nunito"
                                      ),
                                    ),
                                  ),
                                )
                              :
                              SizedBox(height: 26.h)
                          )
                        ]
                    ),
                  )
            );
          });
  }
}