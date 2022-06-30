import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  final String title;

  const DefaultScreen(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
