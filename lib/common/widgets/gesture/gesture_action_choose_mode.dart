import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app_color.dart';

class GestureActionChooseMode extends StatelessWidget {

  final String title;
  final IconData icon;

  const GestureActionChooseMode({
    super.key,
    required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff30393C),
                shape: BoxShape.circle
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16,),
        Text(
          title,
          style: TextStyle(
            color: AppColor.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500
          ),
        )
      ],
                        
    );
  }
}