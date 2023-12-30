import 'export_files_pages_routes.dart';

class Pages{

  static List<GetPage> getPages = [
    GetPage(
        name: RouteName.splash,
        binding: SplashScreenBinding(),
        page: SplashScreenView.new,
        transition: Transition.fadeIn
    ),
    GetPage(
        name: RouteName.home,
        binding: HomeScreenBinding(),
        page: HomeScreenView.new,
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 2000)
    )
  ];

}