import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

appAppBar({
  required String title,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 24,
        color: Colors.black,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SvgPicture.asset(
          'assets/svg/menu.svg',
          height: 28,
          width: 28,
        ),
      ),
    ],
  );
}
