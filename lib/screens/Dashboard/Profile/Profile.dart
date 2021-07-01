import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'EditProfile.dart';
import 'ListAnItem.dart';
import 'ProfilePreview.dart';
import 'Saftey.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

import 'Setting.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: c_white,
        body: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //topWid(context),
                  SizedBox(height: 20),
                  _profilePic(),
                  SizedBox(height: 20),
                  text("Cameron Chin",
                      textColor: c_black,
                      isCentered: true,
                      fontWeight: FontWeight.bold),
                  SizedBox(height: 25),
                  text("Check out my store!", textColor: c_black, isCentered: true),
                  Spacer(
                    flex: 1,
                  ),
                  _buttonRow(),
                  Spacer(
                    flex: 1,
                  ),
                  curveLine(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 20, 30),
                    child: buttonWid(
                        label: "List an item",
                        function: () {
                          Get.to(ListAnItem());
                        },
                        border: true,
                        butColor: mainColor),
                  ),
                ],
              ),
        )]));
  }

  Widget _buttonRow() => Row(
        children: [
          SizedBox(width: 30),
          GestureDetector(
            onTap: () => Get.to(SettingScreen()),
            child: Column(
              children: [
                SvgPicture.asset(
                  "images/settingsbutton.svg",
                  height: 78.0,
                  width: 78.0,
                ),
                text("setting"),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Get.to(SafetyScreen()),
            child: Column(
              children: [
                SvgPicture.asset("images/safteybutton.svg",height: 78.0,
                  width: 78.0,),
                text("safety"),
              ],
            ),
          ),
          SizedBox(width: 30),
        ],
      );

  Widget _profilePic() => Container(
    height: 180,
    width: 180,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: mainColor, width: 1)),
    child: Stack(
      children: [
        
        GestureDetector(
        onTap: () => Get.to(ProfilePreview()),
        child:Center(child: Image.asset(img_profile))),
        Positioned(
          top: 5,right: 2,
          child: GestureDetector(
        onTap: () => Get.to(EditProfile()),
        child: editIcon())),
      ],
    ),
  );
}
