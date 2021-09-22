import 'widget_item_books.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String urlOne;
  final String urlTwo;
  final String urlThree;
  final String urlFour;

  const Body(
      {Key key, this.urlOne, this.urlTwo, this.urlThree, this.urlFour}
      ) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 8),
          child: Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomBooksWidget(
                  url: this.urlOne,
                ),
                CustomBooksWidget(
                  url: this.urlTwo,
                ),
                CustomBooksWidget(
                  url: this.urlThree,
                ),
                CustomBooksWidget(
                  url: this.urlFour,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
