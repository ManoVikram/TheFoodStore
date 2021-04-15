import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/constants.dart';
import '../widgets/theBag.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/backward.svg",
                        height: 12.0,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/menu.svg",
                      height: 12.0,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  padding: EdgeInsets.all(8.0),
                  height: 306.0,
                  width: 306.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSecondaryColor,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Veg Salal Bowl\n",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          TextSpan(
                            text: "With Red Tomato",
                            style: TextStyle(
                              color: kTextColor.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "₹20",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                TheBag(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


