import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/src.exports.dart';

class ProjectsSectionWidget extends StatelessWidget {
  const ProjectsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 51.0,
              child: Divider(
                color: colorScheme.textColor,
              ),
            ),
            const SizedBox(width: 12.0),
            Text(
              'My Project',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: colorScheme.textColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32.0),
        Text(
          'Featured Projects',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 48.0,
            color: colorScheme.textColor,
          ),
        ),
        const SizedBox(height: 56.0),
        FeaturedProjectCard(
          backgroundColor: const Color(0xFFEDF0F9),
          decorationColor: const Color(0xFFD9DFF2),
          descriptionWidget: Positioned(
            top: 141.0,
            left: 100.0,
            child: SizedBox(
              width: 620.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'VPN Mobile Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Row(
                    children: [
                      TextCard(
                        text: 'User Research,',
                        color: Color(0xFFCCD9FF),
                      ),
                      SizedBox(width: 12.0),
                      TextCard(
                        text: 'UI Design',
                        color: Color(0xFFCCD9FF),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: MyButtonStyleTheme.elevatedButtonStyle(
                        backgroundColor: colorScheme.primaryColor,
                        fixedSize: const Size(251, 60)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Read Case Study',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          imageWidget: Positioned(
            bottom: 0,
            right: 96.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/vpnimage1.png',
                  width: 326.0,
                ),
                const SizedBox(width: 32.0),
                Image.asset(
                  'assets/images/vpnimage2.png',
                  width: 326.0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 56.0),
        FeaturedProjectCard(
          backgroundColor: const Color(0xFFE9F2FF),
          descriptionWidget: Positioned(
            top: 141.0,
            left: 100.0,
            child: SizedBox(
              width: 620.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Digital Agency Website Landing Page',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Row(
                    children: [
                      TextCard(
                        text: 'User Research,',
                        color: Color(0xFFCCD9FF),
                      ),
                      SizedBox(width: 12.0),
                      TextCard(
                        text: 'UI Design',
                        color: Color(0xFFCCD9FF),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: MyButtonStyleTheme.elevatedButtonStyle(
                        backgroundColor: colorScheme.primaryColor,
                        fixedSize: const Size(251, 60)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Read Case Study',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          imageWidget: Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/digitalagencyimage.png',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 56.0),
        FeaturedProjectCard(
          backgroundColor: const Color(0xFFF6FFF5),
          decorationColor: const Color(0xFFDCF9D9),
          descriptionWidget: Positioned(
            top: 141.0,
            left: 100.0,
            child: SizedBox(
              width: 620.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Generate Color Palattes Mobile Design',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Row(
                    children: [
                      TextCard(
                        text: 'User Research,',
                        color: Color(0xFFCCD9FF),
                      ),
                      SizedBox(width: 12.0),
                      TextCard(
                        text: 'UI Design',
                        color: Color(0xFFCCD9FF),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: MyButtonStyleTheme.elevatedButtonStyle(
                        backgroundColor: colorScheme.primaryColor,
                        fixedSize: const Size(251, 60)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Read Case Study',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          imageWidget: Positioned(
            bottom: 0,
            right: 96.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/gencolorimage1.png',
                  width: 326.0,
                ),
                const SizedBox(width: 32.0),
                Image.asset(
                  'assets/images/gencolorimage2.png',
                  width: 326.0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 56.0),
      ],
    );
  }
}
