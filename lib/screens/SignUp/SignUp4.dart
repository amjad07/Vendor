import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import 'SignUp5.dart';
class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: c_white,
      appBar: appbar(context,title: "Sign Up"),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30,0,30,20) ,
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                logo(),
                SizedBox(height:20),
                textInputContainer(label: "Address Line 1",inputType: TextInputType.text),
                textInputContainer(label: "Address Line 2(Optional)",inputType: TextInputType.text),
                SizedBox(height:10),
                textwithSwitch(label: "Show address line on profile"),
                SizedBox(height:20),
                textInputContainer(label: "City",inputType: TextInputType.text),
                textInputContainer(label: "State",inputType: TextInputType.text),
                textInputContainer(label: "Zipcode",inputType: TextInputType.number),
                Spacer(flex: 1,),
                buttonWid(label: "Next", border: true,function: (){
                  Get.to(SignUp5());
                },butColor: c_button_inactive),
                SizedBox(height:10),
                fourCircleDots(a: 2),
              ],),
          
        ),
          ]),
      
    ));
  }
}