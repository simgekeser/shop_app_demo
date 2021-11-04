import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import 'color_dot.dart';
import 'product_tile_with_image.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin),
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(
                              children: [
                                ColorDot(
                                  color: Color(0xFF356C95),
                                  isSelected: true,
                                ),
                                ColorDot(color: Color(0xFFF8C078)),
                                ColorDot(color: Color(0xFFA29B9B)),
                              ],
                            )
                          ],
                        ),
                        RichText(text: TextSpan(
                            style: TextStyle(color: kTextColor),
                            children: [TextSpan(
                                text: "Size"
                            )]),
                        )],
                    )
                  ],
                ),
              ),
              ProductTileWithImage(product: product)
            ],
          ),
        )
      ],
    ));
  }
}
