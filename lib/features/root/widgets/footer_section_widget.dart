import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';

class FooterSectionWidget extends StatelessWidget {
  const FooterSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 260.0,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'Services',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'Portfolio',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(width: 129.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Linkedln',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'Instagram',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
              const SizedBox(height: 32.0),
              Text(
                'Youtube',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                  color: colorScheme.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(width: 176.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 35.0,
              ),
              height: 130.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFFE7E7E7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Interested in working together? Drop me a line',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25.0,
                      color: colorScheme.scaffoldBackgroundColor,
                    ),
                  ),
                  ElevatedButton(
                    style: MyButtonStyleTheme.elevatedButtonStyle(
                      backgroundColor: colorScheme.primaryColor,
                      fixedSize: const Size(185.0, 60.0),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.email_rounded,
                          color: colorScheme.scaffoldBackgroundColor,
                        ),
                        const SizedBox(width: 11.0),
                        Text(
                          'Copy Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: colorScheme.scaffoldBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
