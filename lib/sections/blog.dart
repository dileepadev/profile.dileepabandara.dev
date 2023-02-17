import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.blogKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Blog',
              subtitle:
                  'Sometimes I love to write things, and these places inspire me to write blogs.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'blog',
              widget: 'hashnode',
              title: 'Hashnode',
              url: DataValues.hashnodeURL,
            ),
            CardProfile(
              type: 'blog',
              widget: 'medium',
              title: 'Medium',
              url: DataValues.mediumURL,
            ),
            CardProfile(
              type: 'blog',
              widget: 'devcommunity',
              title: 'Dev Community',
              url: DataValues.devCommunityURL,
            ),
            CardProfile(
              type: 'blog',
              widget: 'blogger',
              title: 'Blogger',
              url: DataValues.bloggerURL,
            ),
          ],
        ),
      ),
    );
  }
}
