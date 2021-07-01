import 'package:flutter/material.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      appBar: appbar(context, title: "Edit Profile"),
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          padding: const EdgeInsets.only(bottom:40),
          children: [
            _photo(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  textwithSwitch(label: "Show phone number on profile"),
                  textwithSwitch(label: "Show address on profile"),
                ],
              ),
            ),
            greyCont("Location"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Location"),
            SizedBox(
              height: 10,
            ),
            greyCont("Address Line 1"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Address Line 1"),
            SizedBox(
              height: 10,
            ),
            greyCont("Address Line 2"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Address Line 2"),
            SizedBox(
              height: 10,
            ),
            greyCont("A Short Bio (Recommended)"),
            SizedBox(
              height: 10,
            ),
            curveLine(),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),

              child: buttonWid(
                  label: "Save Profile",
                  function: () {},
                  border: true,
                  height: 70.0,
                  fontsize: 30.0,
                  fontWeight: FontWeight.bold,
                  icon: false),
            ),
            
          ],
        ),
      ),
    );
  }
 

  Widget _photo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
      decoration: boxDecoration(
        radius: 0,
        fillcolor: mainColor.withOpacity(0.1),
      ),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.8),
          itemCount: 6,
          itemBuilder: (context, i) {
            return Stack(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    //color: mainColor.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: RDottedLineBorder.all(
                        width: 1.5, dottedLength: 8, dottedSpace: 8),
                  ),
                ),
                Positioned(
                    bottom: -10,
                    right: -5,
                    child: Image.asset(img_listanItem_add))
              ],
            );
          }),
    );
  }

  Widget conditionChoosing() {
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 8, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text("Conditions", textColor: mainColor, fontSize: 21.0),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              choose("New", context),
              choose("Used", context),
              choose("Not Specified", context)
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

Widget choose(String options, context) {
  return Container(
    height: 40,
    width: 120,
    child: Center(child: text(options, isCentered: true, fontSize: 15.0)),
    decoration: boxDecoration(radius: 20.0, fillcolor: c_grey2),
  );
}
