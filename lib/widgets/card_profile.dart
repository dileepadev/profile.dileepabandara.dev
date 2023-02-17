import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

import '../theme/app_theme_data.dart';

class CardProfile extends StatelessWidget {
  final String type, widget, title;
  final Uri url;

  const CardProfile(
      {Key? key,
      required this.type,
      required this.widget,
      required this.title,
      required this.url})
      : super(key: key);

  Future<void> launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    } else {
      log('Launched URL: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppThemeData.backgroundBlack,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: ListTile(
        mouseCursor: SystemMouseCursors.click,
        hoverColor: AppThemeData.buttonSecondary,
        selectedColor: AppThemeData.cardGrey,
        onTap: () => launchURL(url),
        leading: type == 'logo'
            ? Image.asset(
                'assets/images/$widget.png',
                width: 50.0,
                height: 50.0,
              )
            : Image.network(
                'https://ghmd.dileepabandara.dev/widgets/$type/dark/$widget.png',
                width: 50.0,
                height: 50.0,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.network(
                    'https://ghmd.dileepabandara.dev/widgets/default/dark.png',
                    width: 50.0,
                    height: 50.0,
                  );
                },
              ),
        title: Text(
          title,
          style: AppThemeData.themeData.textTheme.labelLarge,
        ),
        subtitle: Text(
          url.toString(),
          style: AppThemeData.themeData.textTheme.labelMedium,
        ),
        trailing: Image.asset(
          'assets/icons/external_link.png',
          height: 20.0,
          width: 20.0,
        ),
      ),
    );
  }
}
