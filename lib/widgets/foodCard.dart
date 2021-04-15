import 'package:flutter/material.dart';

import '../config/constants.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String title;
  final String ingerdient;
  final String description;
  final int calories;
  final int price;
  final Function onPressed;

  const FoodCard({
    Key key,
    this.image,
    this.title,
    this.ingerdient,
    this.description,
    this.calories,
    this.price,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 420.0,
        width: 270.0,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 390.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  color: kPrimaryColor.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              left: -50.0,
              child: Container(
                height: 184.0,
                width: 276.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80.0,
              right: 15.0,
              child: Text(
                "₹$price",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kPrimaryColor,
                    ),
              ),
            ),
            Positioned(
              top: 200.0,
              left: 30.0,
              child: Container(
                width: 210.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      ingerdient,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.6),
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("${calories}KCal")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
