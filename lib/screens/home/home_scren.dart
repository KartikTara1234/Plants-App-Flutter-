import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_shop_app/components/bottom_navbar.dart';
import 'package:plants_shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),
      body: Body(),
      bottomNavigationBar: bottomnavbar(),
    );
  }
}
