import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:webelight_assignment/constants/theme_constants.dart';
import 'package:webelight_assignment/modules/splash_screen/splash_screen.dart';

import 'modules/vehicle/vehicle_provider.dart';
import 'modules/vehiecle_detail/vehicle_detail_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<VehicleDataProvider>(create: (_) => VehicleDataProvider()),
  ChangeNotifierProvider<VehicleDetailProvider>(create: (_) => VehicleDetailProvider()),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeConstatns.defaultTheme,
      home: SplashScreen(),
    );
  }
}
