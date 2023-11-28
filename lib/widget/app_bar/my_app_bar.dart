import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/models/models.exports.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return AppBar(
      toolbarHeight: ResponsiveValue(
        context,
        defaultValue: 145.0,
        conditionalValues: [
          Condition.smallerThan(
            name: TABLET,
            value: 56.0,
          ),
        ],
      ).value,
      leadingWidth: ResponsiveValue(
        context,
        defaultValue: 288.0,
        conditionalValues: [
          Condition.smallerThan(
            name: TABLET,
            value: 110.0,
          ),
        ],
      ).value,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsets.only(
          left: ResponsiveValue(
            context,
            defaultValue: 100.0,
            conditionalValues: [
              Condition.smallerThan(
                name: TABLET,
                value: 24.0,
              ),
            ],
          ).value!,
        ),
        child: Image.asset(
          'assets/icons/logo-light.png',
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: MyMenu.menus()
            .asMap()
            .map(
              (index, value) => MapEntry(
                index,
                Padding(
                  padding: EdgeInsets.only(
                    right: index != MyMenu.menus().length - 1 ? 64.0 : 0,
                  ),
                  child: Text(
                    value.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: colorScheme.textColor,
                    ),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 42.0,
            bottom: 43.0,
            right: 100.0,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: MyButtonStyleTheme.outlinedButtonStyle(),
            child: const Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF5A5A5A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
