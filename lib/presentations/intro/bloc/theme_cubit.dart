import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);
  
  @override
  Map<String, dynamic>? toJson(ThemeMode themeMode) {
    return {'theme': themeMode.toString()};
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeString = json['theme'] as String?;
    switch (themeString) {
      case 'ThemeMode.dark':
        return ThemeMode.dark;
      case 'ThemeMode.light':
        return ThemeMode.light;
      case 'ThemeModeR.system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

}