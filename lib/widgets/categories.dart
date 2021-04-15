import 'package:flutter/material.dart';

import './categoryTitle.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryTitle(
          title: "All",
          active: true,
        ),
        CategoryTitle(
          title: "Italian",
        ),
        CategoryTitle(
          title: "Spanish",
        ),
        CategoryTitle(
          title: "Indian",
        ),
        CategoryTitle(
          title: "Chinese",
        ),
        CategoryTitle(
          title: "French",
        ),
        CategoryTitle(
          title: "Burgers",
        ),
      ],
    );
  }
}
