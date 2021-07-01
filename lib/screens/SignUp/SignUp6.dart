import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import '../Dashboard/Dashboard.dart';
class SignUp6 extends StatefulWidget {
  @override
  _SignUp6State createState() => _SignUp6State();
}

class _SignUp6State extends State<SignUp6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: c_white,
      appBar: appbar(context,title: "SIgn Up"),
      body: Container(
        padding: const EdgeInsets.only(left:10,right: 10,top: 30,bottom: 20),
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [

                text("Your account has been created!",isCentered: true,maxLine: 2),
                Divider(color: mainColor,),
                SizedBox(height:50),
                text(text2,isCentered: true,maxLine:7),
                Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 20,top: 20),
                  child: buttonWid(label: "Become Verified",  border: true,function: (){},butColor: mainColor),
                ),
                text("https://forms.gle/FYPjnfLuFX4TzB4h9",textColor: mainColor,latterSpacing: 0.0),
                
                Spacer(flex: 1,),
                GestureDetector(
                  onTap: (){
                    //Get.to(Dashboard());
                    Navigator.push(context,PageRouteBuilder(pageBuilder:(_,__,___)=>Dashboard(),transitionDuration: Duration(seconds: 0)));
                  },
                  child: text("NEXT",textColor: mainColor))
              ],),
            ),]
      ),
      
    ));
  }

}
const String text2="If you are already a verified seller on eBay, Amazon, TCG Player or any other service you can file a verification form to become a verified user on our Vendr.";