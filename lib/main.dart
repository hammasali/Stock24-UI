import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock/business_logic/cubit/counter_cubit.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/app_routes.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/auth_screens/auth_screen1.dart';

void main() {
  runApp(App());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppInfo.SplashBgClr,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => CounterCubit(),
      ),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  final AppRoutes _appRoutes = AppRoutes();
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _appRoutes.onGenerateRoute,
      home: AnimatedSplashScreen(
        splash: SvgPicture.string(
          logo,
          fit: BoxFit.scaleDown,
          allowDrawingOutsideViewBox: true,
        ),
        backgroundColor: AppInfo.SplashBgClr,
        duration: 5,
        nextScreen: AuthScreen1(),
        splashTransition: SplashTransition.sizeTransition,
      ),
    );

  }
}
