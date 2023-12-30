
import 'export_files_main.dart';

void main() async{
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: ()=> ScreenUtil.init(context, designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height)),
      debugShowCheckedModeBanner: false,
      getPages: Pages.getPages,
      initialRoute: RouteName.splash,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
