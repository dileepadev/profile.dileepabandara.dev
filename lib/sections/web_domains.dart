import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class WebDomains extends StatelessWidget {
  const WebDomains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.webDomainKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Web Domains',
              subtitle: 'These are the domains I own and manage.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | Main',
              url: DataValues.devURL,
            ),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | Profile',
              url: DataValues.profileURL,
            ),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | Toolkit',
              url: DataValues.toolkitURL,
            ),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | Volunteering',
              url: DataValues.volunteeringURL,
            ),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | Blog',
              url: DataValues.blogURL,
            ),
            CardProfile(
              type: 'logo',
              widget: 'logo',
              title: 'Dileepa Bandara | TechDiary',
              url: DataValues.techDiaryURL,
            ),
          ],
        ),
      ),
    );
  }
}
