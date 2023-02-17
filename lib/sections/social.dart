import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.socialKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Social',
              subtitle: 'These are the places I use to socialize.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'social',
              widget: 'linkedin',
              title: 'LinkedIn',
              url: DataValues.linkedinURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'twitter',
              title: 'Twitter',
              url: DataValues.twitterURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'youtube',
              title: 'YouTube',
              url: DataValues.youtubeURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'facebook',
              title: 'Facebook',
              url: DataValues.facebookURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'instagram',
              title: 'Instagram',
              url: DataValues.instagramURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'whatsapp',
              title: 'WhatsApp',
              url: DataValues.whatsappURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'snapchat',
              title: 'Snapchat',
              url: DataValues.snapchatURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'pinterest',
              title: 'Pinterest',
              url: DataValues.pinterestURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'tiktok',
              title: 'TikTok',
              url: DataValues.tiktokURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'skype',
              title: 'Skype',
              url: DataValues.skypeURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'reddit',
              title: 'Reddit',
              url: DataValues.redditURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'linktree',
              title: 'LinkTree',
              url: DataValues.linktreeURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'discord',
              title: 'Discord',
              url: DataValues.discordURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'spotify',
              title: 'Spotify',
              url: DataValues.spotifyURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'imdb',
              title: 'IMDb',
              url: DataValues.imdbURL,
            ),
            CardProfile(
              type: 'social',
              widget: 'tmdb',
              title: 'TMDB',
              url: DataValues.tmdb,
            ),
          ],
        ),
      ),
    );
  }
}
