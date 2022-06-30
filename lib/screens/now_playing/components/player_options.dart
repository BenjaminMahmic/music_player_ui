import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/app.dart';

class PlayerOptions extends StatelessWidget {
  const PlayerOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '1:46',
                  style: TextStyle(color: Colors.grey),
                ),
                Text('5:33'),
              ],
            ),
          ),
          Slider(
            activeColor: AppColors.color2,
            inactiveColor: Colors.grey,
            value: 0.3,
            onChanged: (_) {},
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/repeat.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svg/backward.svg',
                  height: 28,
                  width: 28,
                  color: Colors.black,
                ),
                const SizedBox(width: 20),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.color1,
                        AppColors.color2,
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/play.svg',
                    height: 28,
                    width: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                SvgPicture.asset(
                  'assets/svg/forward.svg',
                  height: 28,
                  width: 28,
                  color: Colors.black,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/svg/shuffle.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
