import 'package:test_now/app/theme/app_text_styles.dart';

import 'export_files_home_view.dart';

class HomeScreenView extends StatelessWidget{
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder:(HomeScreenController homeScreenController) {
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Text(
                  TextConstants.hi,
                  style: TextStyle(
                      color: Get.isDarkMode? Colors.white : Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 36.sp,
                      fontFamily: "Nunito"
                  )
                ),
                SizedBox(height: 40.h),
                Card(
                  elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(TextConstants.steps, style: Get.isDarkMode? AppTextStylesName.upperCardTextStyleDM : AppTextStylesName.upperCardTextStyleLM),
                                    Text("13,100", style: Get.isDarkMode? AppTextStylesName.upperCardTextStyleDM : AppTextStylesName.upperCardTextStyleLM),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                LinearProgressIndicator(
                                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                  minHeight: 16.h,
                                  backgroundColor: Get.isDarkMode? ColorPalette.linearProgressBackgroundColorDM : ColorPalette.linearProgressBackgroundColorWM,
                                  color: Get.isDarkMode? Colors.white : Colors.black,
                                  value: 0.8,
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text("0", style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM)
                                    ),
                                    Text(TextConstants.goal, style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM),
                                    Text("15,000", style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Spacer(flex: 2),
                          AppSVGWidget.svgPicture(path: AssetString.ionFootstepsPath, height: 52.h, width: 52.w, color: Get.isDarkMode? Colors.white : Colors.black)
                        ],
                      ),
                    ),
                ),
                SizedBox(height: 20.h),
                Card(
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(TextConstants.caloriesBurned, style: Get.isDarkMode? AppTextStylesName.upperCardTextStyleDM : AppTextStylesName.upperCardTextStyleLM),
                                  Text("100", style: Get.isDarkMode? AppTextStylesName.upperCardTextStyleDM : AppTextStylesName.upperCardTextStyleLM),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              LinearProgressIndicator(
                                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                minHeight: 16.h,
                                backgroundColor: Get.isDarkMode? ColorPalette.linearProgressBackgroundColorDM : ColorPalette.linearProgressBackgroundColorWM,
                                color: Get.isDarkMode? Colors.white : Colors.black,
                                value: 0.25,
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("0", style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM),
                                  ),
                                  Text(TextConstants.goal, style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM),
                                  Text("500", style: Get.isDarkMode? AppTextStylesName.lowerCardTextStyleDM : AppTextStylesName.lowerCardTextStyleLM),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(flex: 2),
                        AppSVGWidget.svgPicture(path: AssetString.kcalPath, height: 52.h, width: 52.w, color: Get.isDarkMode? Colors.white : Colors.black)
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      );
    });
  }

}