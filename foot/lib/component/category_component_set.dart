import 'package:flutter/material.dart';
import 'category_component.dart';

class CategoryComponentSet extends StatelessWidget {
  const CategoryComponentSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
            CategoryComponent(
              imageUrl: 'https://law.asia/wp-content/uploads/2022/11/Korea-top-100-lawyers-2022.jpg',
              categoryTitle: 'Korea',
              date: '2022 ~',
              introductionComment: 'Coding Lecturer',
            ),
          ],
        ),
      ),
    );
  }
}
