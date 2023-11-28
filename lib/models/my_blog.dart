import 'package:flutter/material.dart';

class MyBlog {
  final String image;
  final String author;
  final String category;
  final String date;
  final String title;
  final String description;
  final VoidCallback onTap;

  MyBlog({
    required this.image,
    required this.author,
    required this.category,
    required this.date,
    required this.title,
    required this.description,
    required this.onTap,
  });

  static List<MyBlog> blogs() => [
        MyBlog(
          image: 'assets/images/blogimage1.png',
          author: 'Admin',
          category: 'Design',
          date: 'July-19, 2022',
          title: 'The best design tools in 2022 for prototyping',
          description:
              'It is a long established fact that a reader will be distracted the readable content of a page when looking at its layout.',
          onTap: () {},
        ),
        MyBlog(
          image: 'assets/images/blogimage2.png',
          author: 'Admin',
          category: 'Social Media',
          date: 'July-19, 2022',
          title: '5 free hot Colors to download in 2022',
          description:
              'It is a long established fact that a reader will be distracted the readable content of a page when looking at its layout.',
          onTap: () {},
        ),
        MyBlog(
          image: 'assets/images/blogimage3.png',
          author: 'Admin',
          category: 'Design',
          date: 'July-19, 2022',
          title: '10 Quick tips to improve your web design',
          description:
              'It is a long established fact that a reader will be distracted the readable content of a page when looking at its layout.',
          onTap: () {},
        ),
      ];
}
