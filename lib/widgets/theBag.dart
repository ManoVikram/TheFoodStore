import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/constants.dart';

class TheBag extends StatelessWidget {
  const TheBag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 28.0,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(28.0),
            ),
            child: Row(
              children: [
                Text(
                  "Add to Bag",
                  style: Theme.of(context).textTheme.button,
                ),
                SizedBox(
                  width: 30.0,
                ),
                SvgPicture.asset(
                  "assets/icons/forward.svg",
                  height: 12.0,
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor.withOpacity(0.26),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: SvgPicture.asset("assets/icons/bag.svg"),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 28.0,
                    width: 28.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: Text(
                      "0",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor, fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
