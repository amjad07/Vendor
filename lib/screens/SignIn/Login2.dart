import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/screens/Dashboard/Dashboard.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
class LogIn2 extends StatefulWidget {
  @override
  _LogIn2State createState() => _LogIn2State();
}

class _LogIn2State extends State<LogIn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: c_white,
      appBar: appbar(context,title: "Log in"),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30,50,30,20) ,
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                logo(),
                SizedBox(height:20),
                textInputContainer(label: "Email",inputType: TextInputType.emailAddress),
                SizedBox(height:20),
                textInputContainer(label: "Password",inputType: TextInputType.text,obscure: true),
                text("Forget Password?",textColor: mainColor),
                SizedBox(height: 30,),
                buttonWid(label: "Log in",border: true, function: (){
                  print("Login button");
                  Get.to(()=>Dashboard());
                },butColor: c_button_inactive),
                Spacer(flex: 1,),
                Center(child: text("Terms of service",lineThrough: true))

          ],),
        ),
          ])),
      
    );
  }
}