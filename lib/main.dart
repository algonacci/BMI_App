import 'package:bmi_app/height_provider.dart';
import 'package:bmi_app/home_page.dart';
import 'package:bmi_app/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeightProvider>(
          create: (context) => WeightProvider(),
        ),
        ChangeNotifierProvider<HeightProvider>(
          create: (context) => HeightProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
