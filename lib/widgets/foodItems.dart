import 'package:flutter/material.dart';

import './foodCard.dart';
import '../screens/detailsScreen.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FoodCard(
          title: "Vegan salad bowl",
          image: "assets/images/image_1.png",
          ingerdient: "With Red Tomato",
          description:
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
          calories: 420,
          price: 20,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(),
              ),
            );
          },
        ),
        FoodCard(
          title: "Vegan salad bowl",
          image: "assets/images/image_2.png",
          ingerdient: "With Red Tomato",
          description:
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
          calories: 420,
          price: 20,
        ),
        FoodCard(
          title: "Vegan salad bowl",
          image: "assets/images/image_1.png",
          ingerdient: "With Red Tomato",
          description:
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
          calories: 420,
          price: 20,
        ),
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
