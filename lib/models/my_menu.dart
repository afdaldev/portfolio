import 'package:flutter/material.dart';

class MyMenu {
  final String title;
  final VoidCallback onTap;

  MyMenu({
    required this.title,
    required this.onTap,
  });

  static List<MyMenu> menus() => [
        MyMenu(
          title: 'Home',
          onTap: () {},
        ),
        MyMenu(
          title: 'Services',
          onTap: () {},
        ),
        MyMenu(
          title: 'Portfolio',
          onTap: () {},
        ),
        MyMenu(
          title: 'Contact',
          onTap: () {},
        ),
      ];
}
