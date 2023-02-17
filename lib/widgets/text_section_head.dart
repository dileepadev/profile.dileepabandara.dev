import 'package:flutter/material.dart';

import '../theme/app_theme_data.dart';

class TextSectionHead extends StatelessWidget {
  final String title;
  final String subtitle;

  const TextSectionHead({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SelectableText(
          title,
          style: TextStyle(
            color: AppThemeData.themeData.primaryColor,
            fontSize: AppThemeData.themeData.textTheme.titleMedium!.fontSize,
            fontWeight:
                AppThemeData.themeData.textTheme.titleMedium!.fontWeight,
          ),
        ),
        const SizedBox(height: 5.0),
        SelectableText(
          subtitle,
          style: TextStyle(
            color: AppThemeData.textGreyLight,
            fontSize: AppThemeData.themeData.textTheme.bodyMedium!.fontSize,
            fontWeight: AppThemeData.themeData.textTheme.bodyMedium!.fontWeight,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
