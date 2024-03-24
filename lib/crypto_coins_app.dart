import 'package:flutter/material.dart';
import 'package:green_mobile/router/router.dart';
import 'package:green_mobile/theme/theme.dart';

class CryptoCoinsApp extends StatelessWidget {
  const CryptoCoinsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptocurrency app',
      theme: darkTheme,
      routes: routes,
    );
  }
}
