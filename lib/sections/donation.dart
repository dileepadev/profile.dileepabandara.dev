import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.donationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Donation',
              subtitle: 'These are the places I use to receive donations.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'donation',
              widget: 'kofi',
              title: 'Ko-Fi',
              url: DataValues.kofiURL,
            ),
            CardProfile(
              type: 'donation',
              widget: 'buymeacoffee',
              title: 'Buy Me a Coffee',
              url: DataValues.buymeacoffeeURL,
            ),
          ],
        ),
      ),
    );
  }
}
