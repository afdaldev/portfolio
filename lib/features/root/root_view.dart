import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/features/root/widgets/about_section_widget.dart';
import 'package:portfolio/features/root/widgets/blog_section_widget.dart';
import 'package:portfolio/features/root/widgets/contact_section_widget.dart';
import 'package:portfolio/features/root/widgets/footer_section_widget.dart';
import 'package:portfolio/features/root/widgets/main_card_section_widget.dart';
import 'package:portfolio/features/root/widgets/projects_section_widget.dart';
import 'package:portfolio/features/root/widgets/services_section_widget.dart';
import 'package:portfolio/features/root/widgets/testimonial_section_widget.dart';
import 'package:portfolio/src.exports.dart';
import 'package:portfolio/widget/app_bar/app_bar.exports.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Scaffold(
      backgroundColor: colorScheme.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          ResponsiveValue(
            context,
            defaultValue: 145.0,
            conditionalValues: [
              Condition.smallerThan(
                name: TABLET,
                value: 56.0,
              ),
            ],
          ).value!,
        ),
        child: const MyAppBar(),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100.0,
            ),
            child: Column(
              children: [
                SizedBox(height: 22.0),
                MainCardSectionWidget(),
                SizedBox(height: 155.0),
                AboutSectionWidget(),
                SizedBox(height: 155.0),
                ServicesSectionWidget(),
                SizedBox(height: 155.0),
                ProjectsSectionWidget(),
                SizedBox(height: 155.0),
                TestimonialSectionWidget(),
              ],
            ),
          ),
          const SizedBox(height: 205.0),
          Container(
            color: const Color(0xFFF7F7F7),
            padding: const EdgeInsets.symmetric(
              vertical: 100.0,
            ),
            child: const BlogSectionWidget(),
          ),
          const SizedBox(height: 156.0),
          const ContactSectionWidget(),
          const SizedBox(height: 120.0),
          const FooterSectionWidget(),
          const SizedBox(height: 128.0),
          const Divider(
            height: 1.0,
            color: Color(0xFFEAEAEA),
          ),
          const SizedBox(height: 56.0),
          Center(
            child: Text(
              'Copyright © Bless | Designed by WIRA Templates - Powered by Webflow',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: colorScheme.textColor,
              ),
            ),
          ),
          const SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
