import 'package:flutter/material.dart';
import 'package:plants_shop_app/constants.dart';

class FeaturesPlants extends StatelessWidget {
  const FeaturesPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          featuredPlantCArd(
            Image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          featuredPlantCArd(
            Image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class featuredPlantCArd extends StatelessWidget {
  const featuredPlantCArd({
    Key? key,
    required this.Image,
    required this.press,
  }) : super(key: key);

  final String Image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: 200,
        height: 101,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(Image),
          ),
        ),
      ),
    );
  }
}
