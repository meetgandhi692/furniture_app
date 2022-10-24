import 'package:flutter/material.dart';
import 'package:furniture_app/productDetails.dart';
import 'wishlistPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      // theme: ThemeData.dark(),
      home: ProductDetails(),
    );
  }
}
