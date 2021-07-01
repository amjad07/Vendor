import 'package:flutter/material.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import 'Buying/Buying.dart';
import 'Selling/Selling.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  var fragment;
  var fragment1 = Buying();
  var fragment2 = Selling();
  int selected = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fragment = [fragment1, fragment2];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // topWid(context),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _wid(label: "8", pos: 0, label2: "Buying"),
                  Container(
                    height: 55,width: 1,
                    decoration:
                        boxDecoration(radius: 0, fillcolor: mainColor),
                  ),
                  _wid(label: "4", pos: 1, label2: "Selling"),
                ],
              ),
            ),
            curveLine(),
            SizedBox(height: 8,),
            fragment[selected]
          ],
        ),
      ),
    );
  }

  Widget _wid({required String label, label2, required int pos}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = pos;
        });
      },
      child: Row(
        children: [
          Container(
            //padding: const EdgeInsets.all(5),
            height: 38,width: 40,
            decoration: BoxDecoration(color: selected == pos ? mainColor : c_grey3,
            shape: BoxShape.circle
            ),
            child: Center(
              child: text(label,
                  textColor: c_white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          text(label2,
              fontSize: 30.0,
              textColor: selected == pos ? mainColor : c_grey3,
              fontWeight: FontWeight.bold),
        ],
      ),
    );
  }
}
