import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme_data.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class Developer extends StatelessWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.developerKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Developer',
              subtitle: 'These are the places I use to develop things.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'developer',
              widget: 'googledevelopers',
              title: 'Google Developer Profile',
              url: DataValues.googleLearnUrl,
            ),
            CardProfile(
              type: 'developer',
              widget: 'microsoft',
              title: 'Microsoft Learn Profile',
              url: DataValues.microsoftLearnUrl,
            ),
            CardProfile(
              type: 'developer',
              widget: 'mlsa',
              title: 'Microsoft Learn Student Ambassadors',
              url: DataValues.mlsaUrl,
            ),
            CardProfile(
              type: 'devops',
              widget: 'github',
              title: 'GitHub',
              url: DataValues.githubURL,
            ),
            CardProfile(
              type: 'devops',
              widget: 'gitlab',
              title: 'GitLab',
              url: DataValues.gitlabURL,
            ),
            CardProfile(
              type: 'devops',
              widget: 'bitbucket',
              title: 'BitBucket',
              url: DataValues.bitbucketURL,
            ),
            CardProfile(
              type: 'designing',
              widget: 'figma',
              title: 'Figma',
              url: DataValues.figmaURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'behance',
              title: 'Behance',
              url: DataValues.behanceURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'dribbble',
              title: 'Dribbble',
              url: DataValues.dribbbleURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'stackoverflow',
              title: 'StackOverflow',
              url: DataValues.stackoverflowURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'leetcode',
              title: 'LeetCode',
              url: DataValues.leetcodeURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'codersrank',
              title: 'CodersRank',
              url: DataValues.codersrankURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'codechef',
              title: 'CodeChef',
              url: DataValues.codechefURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'hackerrank',
              title: 'Hackerrank',
              url: DataValues.hackerrankURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'hackerearth',
              title: 'Hackerearth',
              url: DataValues.hackerearthURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'codeproject',
              title: 'CodeProject',
              url: DataValues.codeprojectURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'topcoder',
              title: 'Topcoder',
              url: DataValues.topcoderURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'kaggle',
              title: 'Kaggle',
              url: DataValues.kaggleURL,
            ),
            CardProfile(
              type: 'code',
              widget: 'replit',
              title: 'Repl.it',
              url: DataValues.replitURL,
            ),
            CardProfile(
              type: 'code',
              widget: 'codesandbox',
              title: 'CodeSandbox',
              url: DataValues.codesandboxURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'codewars',
              title: 'CodeWars',
              url: DataValues.codewarsURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'freecodecamp',
              title: 'freeCodeCamp',
              url: DataValues.freeCodeCampURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'producthunt',
              title: 'Product Hunt',
              url: DataValues.productHuntURL,
            ),
            CardProfile(
              type: 'code',
              widget: 'jsfiddle',
              title: 'JSFiddle',
              url: DataValues.jSFiddleURL,
            ),
            CardProfile(
              type: 'code',
              widget: 'codepen',
              title: 'CodePen',
              url: DataValues.codePenURL,
            ),
            CardProfile(
              type: 'code',
              widget: 'stackblitz',
              title: 'StackBlitz',
              url: DataValues.stackBlitzURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'keybase',
              title: 'Keybase',
              url: DataValues.keybaseURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'glitch',
              title: 'Glitch',
              url: DataValues.glitchURL,
            ),
            CardProfile(
              type: 'frontend',
              widget: 'wordpress',
              title: 'WordPress',
              url: DataValues.wordPressURL,
            ),
            CardProfile(
              type: 'developer',
              widget: 'gravatar',
              title: 'Gravatar',
              url: DataValues.gravatarURL,
            ),
          ],
        ),
      ),
    );
  }
}
