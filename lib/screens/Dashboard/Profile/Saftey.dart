import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';
import 'package:vendr/utils/string.dart';
class SafetyScreen extends StatefulWidget {
  @override
  _SafetyScreenState createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: "Saftey"),
      backgroundColor: c_white,
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _blueColorText(label: "Pay using PayPal service fees"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey1,blue: false),
              _blueColorText(label: "Ship items with tracking"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey2,blue: false),
              _blueColorText(label: "Plan details in advance"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey3,blue: false),
              _blueColorText(label: "Bring a friend"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey4,blue: false),
              _blueColorText(label: "Meet in public"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey5,blue: false),
              _blueColorText(label: "Be careful meeting in private areas"),
              SizedBox(height:5),
              _blueColorText(label: txt_saftey6,blue: false),
              
              
              
             
              
          ],),
        ),
      )
      
    );
  }
  Widget _blueColorText({required String label,bool blue=true}){
    return text(label,textColor: blue?mainColor:c_textColor,fontWeight:blue? FontWeight.bold:FontWeight.normal,
      fontSize:blue? 29.0:17.0,maxLine: 10);
  }
  
}