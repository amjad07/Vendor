import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SignUp6.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
class SignUp5 extends StatefulWidget {
  @override
  _SignUp5State createState() => _SignUp5State();
}

class _SignUp5State extends State<SignUp5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: c_white,
      appBar: appbar(context,title: "Sign Up"),
      body: Container(
        padding: const EdgeInsets.only(left:10,right: 10,bottom: 20),
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  logo(),
                  SizedBox(height:30),
                  text("Add pictures (min 1) of yourself that will be on your profile for safer transactions. ",isCentered: true,
                    maxLine:5,latterSpacing: 1.5),
                  text("See guidelines",textColor: mainColor),
                  Container(
                    margin: const EdgeInsets.fromLTRB(70,50,70,80),
                    height: 50,
                    decoration: boxDecoration(radius: 0.0,bordercolor: mainColor,fillcolor: c_white,borderWidth: 1.0),
                    child: Center(child: text("Add photos",textColor: mainColor),),
                  ),
                Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20),
                    child: buttonWid(label: "Create Account",  border: true,function: (){
                      Get.to(SignUp6());
                    },),
                  ),
                  SizedBox(height:10),
                  fourCircleDots(a: 3),
                ],),
        ),
          ]),
      
    ));
  }
}