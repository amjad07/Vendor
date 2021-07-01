import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ActiveListing.dart';
import 'PreviousListing.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class Selling extends StatefulWidget {
  const Selling({Key? key}) : super(key: key);

  @override
  _SellingState createState() => _SellingState();
}

class _SellingState extends State<Selling> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          
          children: [
          text("  Active Listing",
              textColor: mainColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          _activeListing(),
          text("  Previous Listing",
              textColor: mainColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          _previousListing(),
          recentMsg(),
          _chatHead()
        ]),
      ),
    );
  }
  Widget _activeListing(){
    return Container(
          height: 100,
          padding: const EdgeInsets.only(top:8),
          child: ScrollConfiguration(
            behavior: MyBehaviora(),
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i){
              return GestureDetector(
                onTap: ()=>Get.to(ActiveListing()),
                child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("images/vendorItems2Show.png"),
                    ),
                    text("200\$")
                    
                  ],
            ),
                ),
              );
            }),
          )
        );
  }
  Widget _previousListing(){
    return Container(
          height: 100,
          padding: const EdgeInsets.only(top:8),
          child: ScrollConfiguration(
            behavior: MyBehaviora(),
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i){
              return GestureDetector(
                onTap: ()=>Get.to(PreviousListing()),
                child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("images/vendorItems2Show.png"),
                    ),
                    text("200\$")
                    
                  ],
            ),
                ),
              );
            }),
          )
        );
  }
  Widget _chatHead(){
    return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (context,i){
            return GestureDetector(
            onTap: (){},
              child: Column(
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
                curveLine(),],),);
          },
        );
  }
}
