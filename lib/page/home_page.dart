import 'package:flutter/material.dart';

import '../theme/app_theme_data.dart';
import '../page/header.dart';
import '../page/footer.dart';
import '../sections/web_domains.dart';
import '../sections/developer.dart';
import '../sections/social.dart';
import '../sections/blog.dart';
import '../sections/credentials.dart';
import '../sections/donation.dart';
import '../sections/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.backgroundGrey,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: const [
              Header(),
              WebDomains(),
              Developer(),
              Social(),
              Blog(),
              Credentials(),
              Donation(),
              Contact(),
              SizedBox(height: 20.0),
              Footer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop,
        tooltip: 'Go to top',
        backgroundColor: AppThemeData.buttonPrimary,
        foregroundColor: AppThemeData.iconSecondary,
        child: const Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}
