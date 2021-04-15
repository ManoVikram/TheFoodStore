import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/foodCard.dart';
import '../widgets/categoryTitle.dart';

import '../config/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(12.0),
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
              top: 54.0,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 12.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple Way To Find\nTasty Food",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
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
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  title: "Vegan salad bowl",
                  image: "assets/images/image_1.png",
                  ingerdient: "With Red Tomato",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                  calories: 420,
                  price: 20,
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
            ),
          ),
        ],
      ),
    );
  }
}




