import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';

class ContactSectionWidget extends StatelessWidget {
  const ContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 305.0,
      ),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    text:
                        'Let me know if you want to talk about a potential collaboration.',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.textColor,
                    ),
                    children: const [
                      TextSpan(
                        text: 'I’m available for freelance work',
                        style: TextStyle(
                          color: Color(0xFFb9B9B9),
                        ),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 46.0),
                Text(
                  '👉 wirajesis@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                    color: colorScheme.primaryColor,
                  ),
                ),
                const SizedBox(height: 46.0),
                ElevatedButton(
                  style: MyButtonStyleTheme.elevatedButtonStyle(
                    backgroundColor: colorScheme.primaryColor,
                    fixedSize: const Size(274.0, 72.0),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get to know Me',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: colorScheme.textColor,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 100.0),
          const _CircleImageWithContacts(),
        ],
      ),
    );
  }
}

class _CircleImageWithContacts extends StatelessWidget {
  const _CircleImageWithContacts();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return SizedBox(
      height: 653.0,
      width: 653.0,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(653 / 2),
                border: Border.all(
                  color: const Color(0xFFE1E1E1),
                  width: 1.0,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 60.0,
            top: 30.0,
            bottom: 30.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(653 / 2),
                border: Border.all(
                  color: const Color(0xFFE1E1E1),
                  width: 1.0,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 136.0,
            top: 68.0,
            bottom: 30.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(635.0 / 2),
              child: Image.asset(
                'assets/images/wiracircleimage.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 204,
            left: 43.0,
            child: ElevatedButton(
              style: MyButtonStyleTheme.outlinedButtonStyle(
                fixedSize: const Size(63.0, 63.0),
                backgroundColor: colorScheme.socialButtonColor,
                side: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE1E1E1),
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.safety_check,
                size: 25.0,
                color: colorScheme.primaryColor,
              ),
            ),
          ),
          Positioned(
            top: 295,
            left: 32.0,
            child: ElevatedButton(
              style: MyButtonStyleTheme.outlinedButtonStyle(
                fixedSize: const Size(63.0, 63.0),
                backgroundColor: colorScheme.socialButtonColor,
                side: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE1E1E1),
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.safety_check,
                size: 25.0,
                color: colorScheme.primaryColor,
              ),
            ),
          ),
          Positioned(
            top: 386,
            left: 43.0,
            child: ElevatedButton(
              style: MyButtonStyleTheme.outlinedButtonStyle(
                fixedSize: const Size(63.0, 63.0),
                backgroundColor: colorScheme.socialButtonColor,
                side: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE1E1E1),
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.safety_check,
                size: 25.0,
                color: colorScheme.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
