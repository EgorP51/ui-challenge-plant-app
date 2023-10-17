import 'package:flutter/material.dart';

import 'plant_shop/constants/constants.dart';
import 'plant_shop/presentation/screens/search_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      home: const SearchScreen(),
    );
  }
}
