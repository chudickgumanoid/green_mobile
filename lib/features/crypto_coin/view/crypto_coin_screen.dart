import 'package:flutter/material.dart';

class CryproCoinScreen extends StatefulWidget {
  const CryproCoinScreen({super.key});

  @override
  State<CryproCoinScreen> createState() => _CryproCoinScreenState();
}

class _CryproCoinScreenState extends State<CryproCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'Ошибочка');

    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ?? '...')),
    );
  }
}
