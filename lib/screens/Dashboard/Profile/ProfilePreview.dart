import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

import 'ItemsForSale.dart';
class ProfilePreview extends StatefulWidget {
  @override
  _ProfilePreviewState createState() => _ProfilePreviewState();
}

class _ProfilePreviewState extends State<ProfilePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      appBar: appbar(context, title: "Profile Preview"),
      body: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                SizedBox(height:10),
                _report(),
                _profilePic(),
                SizedBox(height:20),
                text("Cameron C.",textColor: c_black,isCentered: true,fontWeight: FontWeight.bold),
                SizedBox(height:25),
                curveLine(),
                SizedBox(height:20),
                text("Check out my store!",textColor: c_black,isCentered: true),
                SizedBox(height:20),
                curveLine(),
                Spacer(flex: 1,),
                text("Member since May 13, 2019",textColor: c_black,isCentered: true),
                SizedBox(height:10),
                text("Based in Westfield NJ, 07090\nUnited States",textColor: c_black,isCentered: true,maxLine: 3),

                //Spacer(flex: 1,),
                //_buttonRow(),
                
                curveLine(),
                GestureDetector(
                  onTap: ()=>Get.to(ItemsForSale()),
                  child:Image.asset(img_profile_itemForSale)),
                GestureDetector(
                  onTap: ()=>Get.to(ItemsForSale()),
                  child: text("Items for sale")),
                SizedBox(height:10)
              
                
            ],),
      )
      
          ]));
  }
  Widget _report()=>Align(
    alignment: Alignment.centerRight,
    child: Container(
      height: 40,width: 40,
      margin: const EdgeInsets.only(right:10),
      decoration: BoxDecoration(shape: BoxShape.circle,
        border: Border.all(color: c_red,width: 2.5)),
        child: Center(child: text("Report",textColor: c_red,fontSize: 8.0,fontWeight: FontWeight.bold)),
    ),
  );
  Widget _profilePic()=>Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,border: Border.all(color: mainColor,width: 1)),
              child: Image.asset(img_profile),
          );

}