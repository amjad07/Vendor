import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import 'EditListing.dart';

class ActiveListing extends StatefulWidget {
  const ActiveListing({Key? key}) : super(key: key);

  @override
  _ActiveListingState createState() => _ActiveListingState();
}

class _ActiveListingState extends State<ActiveListing> {
  int selected=0;
  final messageInsert = TextEditingController();
  // ignore: deprecated_member_use
  List<Map> messsages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: appbarOfMessaging(context,title: "iPhone X", textShow: false),
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          padding: const EdgeInsets.only(left:0,right: 0),
          children: [
          text("78 people were interested",
              fontSize: 23.0,isCentered: true,
              textColor: mainColor,
              fontWeight: FontWeight.bold,
              ),
          
          SizedBox(
            height: 25,
          ),
          _itemPic(),
          SizedBox(
            height: 25,
          ),
          curveLine(),
         Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _wid( pos: 0, label: "Active\nChats"),
                    Container(
                      height: 75,width: 1.5,
                      decoration:
                          boxDecoration(radius: 0, fillcolor: mainColor),
                    ),
                    _wid( pos: 1, label: "Message\nRequest"),
                  ],
                ),
              ),
          curveLine(),
          text("  Recent messages",textColor: mainColor,fontWeight: FontWeight.w700),
          
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
  Widget _itemPic() => Container(
    height: 180,
    width: 180,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: mainColor, width: 1)),
    child: Stack(
      children: [
        
        Center(child: CircleAvatar(backgroundImage: AssetImage("images/vendorItem1Show.png"),radius: 90,)),
        Positioned(
          top: 0,right: 0.25*MediaQuery.of(context).size.width,left: 0.5*MediaQuery.of(context).size.width,
          child: GestureDetector(
        onTap: () => Get.to(EditListing()),
        child: editIcon())),
      ],
    ),
  );
   Widget _wid({required String label, required int pos}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = pos;
        });
      },
      child: Container(
        
        //padding: const EdgeInsets.all(10),
        width: 0.45*MediaQuery.of(context).size.width,
        child: text(label,
            fontSize: 25.0,maxLine: 2,isCentered: true,
            textColor: selected == pos ? mainColor : c_grey3,
            fontWeight: FontWeight.bold),
      ),
    );
  }


}
