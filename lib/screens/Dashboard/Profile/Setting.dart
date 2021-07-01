import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';
class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: "Settings"),
      backgroundColor: c_white,
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0,20,0,50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,5,0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text("Notifications",fontWeight: FontWeight.bold),
                    textwithSwitch(label: "Messages"),
                    textwithSwitch(label: "Buyer sends you an offer"),
                    textwithSwitch(label: "Matched item is no longer available"),
                    
                  ],
                ),
              ),
              curveLine(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,5,0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text("Account Settings",fontWeight: FontWeight.bold),
                    text("Verify private information to help secure your account.",fontSize: 12.0),
                  ],
                ),
              ),
              greyCont("Phone Number"),
              SizedBox(height:5),
              _rowwithTick(label: "980-985-7845"),
              SizedBox(height:10),
              greyCont("Email Addess"),
              SizedBox(height:5),
              _rowwithTick(label: "text@gmail.com"),
              SizedBox(height:20),
              curveLine(),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,5,0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    text("Verify your account",fontWeight: FontWeight.bold),
                    text("Fill and submit this google form to become a verified user and/or store.",
                      maxLine:2,fontSize: 12.0),
                    text("https://forms.gle/FYPjnfLuFX4TzB4h9",textColor: mainColor),
                    SizedBox(height:20),
                    curveLine(),
                    SizedBox(height:20),
                    text("Contact Us",fontWeight: FontWeight.bold),
                    text("vendrhelp@gmail.com",textColor: mainColor),
                    SizedBox(height:20),
                    curveLine(),
                    Center(
                      child: buttonWid(
                        width: 100.0,
                        label: "Logout" ,function: (){},border: true,butColor: c_grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30,right:30,top: 15),
                      child: buttonWid(
                        // width: 100.0,
                        label: "Save Changes" ,function: (){
                          Get.back();
                        },border: true,butColor: mainColor),
                    ),
                  ],
                ),
              ),
             
              
          ],),
        ),
      )
      
    );
  }
  Widget _rowwithTick({required String label})=>Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(children: [
        SizedBox(width:20),
        text(label),
        Image.asset(img_setting_tick),
      ],),
      Image.asset(img_setting_edit)
    ],
  );
 

}