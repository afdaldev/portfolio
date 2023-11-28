import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 292.0,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              'Based in Makassar , Indonesia, I am UI/UX Designer, Wordpress Design & Social Media Content. And I\'m here to help you move your business forward with 👉 ',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 50.0,
            color: colorScheme.textColor,
          ),
          children: [
            TextSpan(
              text: 'design, technology & creativity',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 50.0,
                color: colorScheme.primaryColor,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
