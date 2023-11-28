import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/models/models.exports.dart';

class BlogSectionWidget extends StatelessWidget {
  const BlogSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Column(
      children: [
        Text(
          'Our Blog',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 48.0,
            color: colorScheme.textColor,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: MyBlog.blogs()
                .asMap()
                .map(
                  (index, value) => MapEntry(
                    index,
                    Padding(
                      padding: EdgeInsets.only(
                        right: index != MyBlog.blogs().length - 1 ? 28.0 : 0,
                      ),
                      child: BlogItemCard(
                        blog: value,
                      ),
                    ),
                  ),
                )
                .values
                .toList(),
          ),
        )
      ],
    );
  }
}

class BlogItemCard extends StatelessWidget {
  final MyBlog blog;

  const BlogItemCard({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return SizedBox(
      width: 510.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17.25),
            child: Image.asset(
              blog.image,
              width: 510.0,
              height: 301.0,
            ),
          ),
          const SizedBox(height: 25.0),
          Text(
            'By ${blog.author} - ${blog.category} - ${blog.date}',
            style: const TextStyle(
                color: Color(0xFF5A5A5A),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
          const SizedBox(height: 12.0),
          Text(
            blog.title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
              color: colorScheme.textColor,
            ),
          ),
          const SizedBox(height: 18.0),
          Text(
            blog.description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Color(0xFF5A5A5A),
            ),
          ),
          const SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {},
            style: MyButtonStyleTheme.elevatedButtonStyle(
                backgroundColor: colorScheme.primaryColor,
                fixedSize: const Size(251, 60)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Read More',
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
    );
  }
}
