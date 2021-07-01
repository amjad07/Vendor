import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/Controller/SignUpController.dart';
import 'package:vendr/screens/SignIn/Login2.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/constants.dart';
import 'SignUp/SignUp2.dart';
class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      backgroundColor: c_white,
      body: Container(
        padding:  EdgeInsets.only(left:30,right: 30,bottom: 10,top: MediaQuery.of(context).padding.top+10),
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _login(),
                  Spacer(flex: 1,),
                  _logoAndBut(),
                  Spacer(flex: 1,),
                  Center(child: _termsAndCondition()),
          ],),
        ),
          ]))
    );
  }

  Widget _termsAndCondition()=>Column(
    
    children: [
    text("By clicking Log in or Sign up, you agree with our ",fontSize: textSizeSmall,isCentered: true),
    text("Terms of service.",lineThrough: true,fontSize: textSizeSmall,isCentered: true)
  ],);

  Widget _logoAndBut()=>Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        logo(welcomeText: true),
        SizedBox(height:20),
        buttonWid(label: "Sign Up",border: true,borderColor: c_white,
          function: (){
          
                    //Get.find<SignUpController>().signUp();
          
          Get.to(SignUp2());
        }),
      ],
    ),
  );

  Widget _login()=>GestureDetector(
    onTap: (){
        Get.to(LogIn2());
    },
    child: text("Log in",textColor: mainColor,fontWeight: FontWeight.w900));
}