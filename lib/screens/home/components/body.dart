import 'package:flutter/material.dart';
import 'package:plants_shop_app/constants.dart';
import 'package:plants_shop_app/screens/home/components/feature_plants.dart';
import 'package:plants_shop_app/screens/home/components/headerwithsearchbox.dart';
import 'package:plants_shop_app/screens/home/components/recomendedPlants.dart';
import 'package:plants_shop_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              headerwithsearchbox(size: size),
              TitleWithMoreButton(title: "Recomended", press: () {}),
              RecomendPlants(),
              TitleWithMoreButton(title: "Featured", press: () {}),
              FeaturesPlants(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ],
    );
  }
}
