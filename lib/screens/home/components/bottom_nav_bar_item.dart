import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_ui/app/app.dart';

appBotNavBarItem({
  required String svgPic,
  required String label,
  required int itemValue,
  required int currentIndex,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      svgPic,
      height: 20,
      width: 20,
      color: currentIndex == itemValue ? AppColors.color2 : Colors.grey,
    ),
    label: label,
  );
}
