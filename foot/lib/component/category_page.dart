import 'package:flutter/material.dart';

import 'category_component.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.add_circle_outline_sharp),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
                CategoryComponent(
                  imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
                  title: 'Korea',
                  date: '2022 ~',
                  introductionComment: 'Coding Lecturer',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

