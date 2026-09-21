import 'package:flutter/material.dart';
import 'package:islami_c20/core/resources/routes_manager.dart';
import 'package:islami_c20/ui/home/screen/home_screen.dart';
import 'package:islami_c20/ui/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
initialRoute: RoutesManager.onBoardingRouteName ,
routes: {
  RoutesManager.onBoardingRouteName :(context)=>const OnBoardingScreen(),
  RoutesManager.homeRouteName :(context)=> HomeScreen(),

},
    );
  }
}

