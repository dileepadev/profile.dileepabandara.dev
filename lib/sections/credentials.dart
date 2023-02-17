import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class Credentials extends StatelessWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.credentialKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Credentials',
              subtitle: 'These are the places I share my digital credentials',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'credential',
              widget: 'holopin',
              title: 'Holopin',
              url: DataValues.holopinURL,
            ),
            CardProfile(
              type: 'credential',
              widget: 'badgr',
              title: 'Badgr',
              url: DataValues.badgrURL,
            ),
            CardProfile(
              type: 'credential',
              widget: 'credly',
              title: 'Credly',
              url: DataValues.credlyURL,
            ),
          ],
        ),
      ),
    );
  }
}
