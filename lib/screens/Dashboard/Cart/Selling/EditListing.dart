import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

class EditListing extends StatefulWidget {
  @override
  _EditListingState createState() => _EditListingState();
}

class _EditListingState extends State<EditListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      appBar: appbar(context, title: "Edit Listing"),
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
                  textwithSwitch(label: "Allow local Pickup"),
                  textwithSwitch(label: "Allow On All Categories"),
                ],
              ),
            ),
            greyCont("Title"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Add Title"),
            SizedBox(
              height: 10,
            ),
            greyCont("Description"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Add Description"),
            SizedBox(
              height: 10,
            ),
            greyCont("Asking Price"),
            SizedBox(
              height: 10,
            ),
            whiteCont("Add Price"),
            SizedBox(
              height: 10,
            ),
            curveLine(),
            conditionChoosing(),
            curveLine(),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: textInputContainer(
                    label: "Add Categories", hint: "Type to add categories")),
            Row(children: [
              SizedBox(width:10),
              _categories(label: "All"),
              _categories(label: "Electronics")
            ],),
            SizedBox(
              height: 20,
            ),
            curveLine(),
            SizedBox(
              height: 10,
            ),
            text("Preview Listing",
                isCentered: true,
                textColor: mainColor,
                lineThrough: true,
                fontSize: 21.0),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
              child: buttonWid(
                  label: "Edit Listing ",
                  function: () {},
                  border: true,
                  height: 70.0,
                  fontsize: 30.0,
                  fontWeight: FontWeight.bold,
                  icon: true),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
  Widget _categories({required String label})=>Container(
    padding: const EdgeInsets.only(left:8,right: 8,bottom: 2,top: 2),
    decoration: boxDecoration(fillcolor: mainColor,radius: 50),
    margin: const EdgeInsets.only(right:5),
    
    child: Center(
      child: Row(children: [
        Icon(FontAwesomeIcons.plus,color: c_white,size: 18,),
        SizedBox(width:2),
        text(label,textColor: c_white,fontWeight: FontWeight.w700)
      ],),
    ),
  );

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
