import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/common/widgets/gesture/gesture_action_choose_mode.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_color.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
      
            // background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.chooseModeBackground
                  )
                )
              ),
            ),
      
            // Overlay
            Container(
              color: Colors.black.withAlpha(120),
            ),

            // elements
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(
                        AppVectors.spotifyLogo
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Choose your mode',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureActionChooseMode(
                          title: 'Light Mode',
                          icon: Icons.wb_sunny,
                        ),
                        const SizedBox(width: 48,),
                        GestureActionChooseMode(
                          title: 'Dark Mode',
                          icon: Icons.dark_mode,
                        ),
                      ],
                    ),
                    const SizedBox(height: 48,),
                    BasicAppButton(
                      onPressed: () => {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const ChooseModePage(),))
                      },
                      title: 'Continue',
                    ),
                  ],
                ),
            )
      
          ],
        ),
      ),
    );
  }
}