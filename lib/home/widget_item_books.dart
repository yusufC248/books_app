import 'package:flutter/material.dart';

class CustomBooksWidget extends StatelessWidget {

  final String url;

  const CustomBooksWidget({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child:
            Image.network(
                this.url,
            ),
          ),
        ),
    );
  }
}

class CustomBannerWidget extends StatelessWidget {
  final String url;
  const CustomBannerWidget({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
            this.url,
        ),
      ),
    );
  }
}

