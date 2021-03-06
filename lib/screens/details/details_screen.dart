import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: DetailBody(
          product: product,
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
            ),
            onPressed: () {}),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
