import 'widget_padding.dart';
import 'widget_item_books.dart';
import 'body.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * .15,
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xFFF91091E),
            ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 18, top: 12),
              child: Text("Good Morning\nYusuf!",
                style: TextStyle(fontSize: 28, color:Colors.white),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomPadding(
                    title: "Today Spesial Offer",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 8),
                    child: Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CustomBannerWidget(
                            url: 'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg',
                          ),
                          CustomBannerWidget(
                            url: 'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg',
                          ),
                          CustomBannerWidget(
                            url: 'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomPadding(
                    title: "Best Seller",
                  ),
                  Body(
                    urlOne: 'https://i.ibb.co/M1WXtwS/bintang-fix.jpg',
                    urlTwo: 'https://i.ibb.co/fXjvyvV/tentang-kamu.jpg',
                    urlThree: 'https://i.ibb.co/Y3rfdYR/selena.jpg',
                    urlFour: 'https://i.ibb.co/1z9BKwK/hujan.jpg',
                  ),
                  CustomPadding(
                    title: "Brand New",
                  ),
                  Body(
                    urlOne: 'https://i.ibb.co/PrCTvYV/matahari.jpg',
                    urlTwo: 'https://i.ibb.co/Y3rfdYR/selena.jpg',
                    urlThree: 'https://i.ibb.co/MpvT2Nb/bulan.jpg',
                    urlFour: 'https://i.ibb.co/fCH9QjR/nebula.jpg',
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}