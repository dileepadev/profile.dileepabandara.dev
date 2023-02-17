import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';
import 'package:flutter/services.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/social_profiles.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  Widget title() {
    return SelectableText(DataValues.contactBanner,
        style: TextStyle(
          fontSize: AppThemeData.themeData.textTheme.titleMedium!.fontSize,
          fontWeight: AppThemeData.themeData.textTheme.titleLarge!.fontWeight,
          color: AppThemeData.textWhite,
        ));
  }

  Widget email(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(
            const ClipboardData(text: DataValues.contactEmail),
          );
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              'Email successfully copied to clipboard',
              textAlign: TextAlign.center,
              style: AppThemeData.themeData.textTheme.bodyLarge,
            ),
            duration: const Duration(seconds: 2),
          ));
        },
        child: Tooltip(
          message: 'Click to copy email to clipboard',
          child: Text(
            DataValues.contactEmail,
            style: TextStyle(
              fontSize: AppThemeData.themeData.textTheme.titleMedium!.fontSize,
              fontWeight:
                  AppThemeData.themeData.textTheme.titleLarge!.fontWeight,
              color: AppThemeData.textPrimary,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.contactKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  SelectableText(
                    DataValues.contactTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Padding(
                    padding: ResponsiveScreenProvider.isDesktopScreen(context)
                        ? const EdgeInsets.only(
                            left: 160.0, right: 160.0, top: 10.0, bottom: 40.0)
                        : EdgeInsets.zero,
                    child: SelectableText(
                      DataValues.contactDescription,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            ResponsiveScreenProvider.isDesktopScreen(context)
                ? const SizedBox(height: 0.0)
                : const SizedBox(height: 30.0),
            ResponsiveScreenProvider.isDesktopScreen(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      title(),
                      const SizedBox(width: 5.0),
                      email(context),
                    ],
                  )
                : Column(
                    children: [
                      title(),
                      const SizedBox(height: 5.0),
                      email(context),
                    ],
                  ),
            const SizedBox(
              height: 40.0,
            ),
            const SocialProfiles(),
            const SizedBox(
              height: 20.0,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  if (!await launchUrl(DataValues.profileURL)) {
                    throw 'Could not launch ${DataValues.profileURL}';
                  }
                  log("Direct to: ${DataValues.profileURL}");
                },
                child: Tooltip(
                  message: DataValues.profileURL.toString(),
                  child: Text(
                    'Visit profile.dileepabandara.dev to view my all profiles >>',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:
                          AppThemeData.themeData.textTheme.labelLarge!.fontSize,
                      fontWeight: AppThemeData
                          .themeData.textTheme.labelLarge!.fontWeight,
                      color: AppThemeData.textGreyDark,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
