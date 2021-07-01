import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import 'SignUp3.dart';
class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  var emailController=TextEditingController(),firstNameController=TextEditingController(),lastNameController=TextEditingController(),
  passwordController=TextEditingController(),confirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      resizeToAvoidBottomInset: false,
      appBar: appbar(context,title: "Sign Up"),
      body: Container(
        padding: const EdgeInsets.only(left:30,right: 30,top: 0,bottom: 20),
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                logo(),
                SizedBox(height:20),
                textInputContainer(label: "Email Address",inputType: TextInputType.emailAddress,textEditingController: emailController),
                Spacer(flex: 1,),
                textInputContainer(label: "First Name",inputType: TextInputType.name,textEditingController: firstNameController),
                textInputContainer(label: "Last Name",inputType: TextInputType.name,textEditingController: lastNameController),
                Spacer(flex: 1,),
                textInputContainer(label: "Password",inputType: TextInputType.text,obscure: true,textEditingController: passwordController),
                textInputContainer(label: "Confirm Password",inputType: TextInputType.text,obscure: true,textEditingController: confirmPasswordController),
                Spacer(flex: 3  ,),
                buttonWid(label: "Next", border: true,function: (){
                  
                  Get.to(SignUp3());
                },butColor: c_button_inactive),
                
                fourCircleDots(a: 0),

              ],),
        ),],
      ),
      
    ));
  }
}