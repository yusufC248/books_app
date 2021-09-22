import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final String title;

  const CustomPadding({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        title,
        style: TextStyle(
            fontSize: 22,
            color:Colors.black,
            fontWeight: FontWeight.bold),
      ),
          OutlinedButton(onPressed: (){},
              child: Text("View All",
                style: TextStyle(color: Color(0xFFF91091E)),
              ),
          ),
        ],
      ),
    );
  }
}
