import 'package:flutter/material.dart';
import 'feed_screen.dart';

void main() {
  runApp(const ShopTokApp());
}

class ShopTokApp extends StatelessWidget {
  const ShopTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopTok',
      theme: ThemeData(colorSchemeSeed: Colors.pinkAccent, useMaterial3: true),
      home: const FeedScreen(),
    );
  }
}
