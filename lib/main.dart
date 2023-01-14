import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled_grocery_shop/components/cart_model.dart';
import 'package:untitled_grocery_shop/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> CartModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
        )
    );
  }
}

