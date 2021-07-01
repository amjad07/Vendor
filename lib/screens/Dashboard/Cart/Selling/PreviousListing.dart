import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class PreviousListing extends StatefulWidget {
  const PreviousListing({Key? key}) : super(key: key);

  @override
  _PreviousListingState createState() => _PreviousListingState();
}

class _PreviousListingState extends State<PreviousListing> {
  final messageInsert = TextEditingController();
  // ignore: deprecated_member_use
  List<Map> messsages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: appbarOfMessaging(context,title: "Bose Headphones", messageType: "Sold"),
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          padding: const EdgeInsets.only(left:0,right: 0),
          children: [
          text("78 people were interested",
              fontSize: 23.0,isCentered: true,
              textColor: mainColor,
              fontWeight: FontWeight.bold,
              lineThrough: true),
          
          SizedBox(
            height: 25,
          ),
          _image(),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0,right: 50),
            child: buttonWid(
              
              label: "Relist Item", function: (){},butColor: mainColor,border: true),
          ),
          SizedBox(
            height: 10,
          ),
          curveLine(),
          text("  Buyer",textColor: mainColor,fontWeight: FontWeight.w700),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/vendorItem1Show.png"),
            ),
            title: text("XBox One Controller",
                textColor: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            subtitle: text("I am interested buddy")),
          text("  Messages",textColor: mainColor,fontWeight: FontWeight.w700),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,i){
            return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/vendorItem1Show.png"),
                      ),
                      title: text("XBox One Controller",
                          textColor: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                      subtitle: text("I am interested buddy")),
                  curveLine(),],);
          })
          
              
            
          
        ]),
      ),
    );
  }

Widget _image()=>Container(
    height: 180,
    width: 180,
    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 1,color: mainColor)),
            
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundColor: c_white,
                    backgroundImage:
                        AssetImage("images/vendorItem1Show.png"),
                    radius: 78,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 1,color: mainColor)),),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 1,color: mainColor)),
              
                  ),
                ),
                
              ],
            ));
}
