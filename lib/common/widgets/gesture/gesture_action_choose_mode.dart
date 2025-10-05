import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/config/theme/app_color.dart';
import 'package:spotify/presentations/intro/bloc/theme_cubit.dart';

class GestureActionChooseMode extends StatelessWidget {

  final String title;
  final IconData icon;
  final ThemeMode themeMode;

  const GestureActionChooseMode({
    super.key,
    required this.title,
    required this.icon,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return Column(
      children: [
        GestureDetector(
          onTap: () => themeCubit.updateTheme(themeMode),
          child: ClipOval(
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