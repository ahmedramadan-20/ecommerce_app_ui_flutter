import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/cart.dart';
import 'Modules/intro_page/intro_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => Cart(),builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:IntroPage(),
    ),);
  }
}
