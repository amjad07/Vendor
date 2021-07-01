import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:get/get.dart';
import 'package:vendr/screens/Dashboard/Vendor/productAsking.dart';

import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class VendorItems1 extends StatefulWidget {
  @override
  _VendorItems1State createState() => _VendorItems1State();
}

class _VendorItems1State extends State<VendorItems1> {
  Color changer = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: c_white,
        //appBar: AppBar(backgroundColor: Colors.transparent),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: albumpics.length,
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                  maxWidth: MediaQuery.of(context).size.width,
                  minHeight: MediaQuery.of(context).size.height * 0.8,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) =>
                      Container(child: albumpics[index]),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      setState(() {
                        changer = Colors.blue;
                      });
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                      setState(() {
                        changer = Colors.amber;
                      });
                    }
                  },
                ),
              ),
            ),
            buttonWidget(),
          ],
        ));
  }
  
  Widget buttonWidget() {
  return Container(
      height: 100,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 15,left: MediaQuery.of(context).padding.left+50,top:20,
            child: yellowBuutton()),
          Positioned(
            bottom: 25,left: MediaQuery.of(context).padding.left+125,top:3,
                child: redButton()),
          Positioned(
            bottom: 25,right: MediaQuery.of(context).padding.left+125,top:3,
                child: GestureDetector(
                  onTap: ()=>Get.to(ProductAsking()),
                  child: blueButton())),
          Positioned(
            bottom: 15,right: MediaQuery.of(context).padding.left+50,top:20,
                child: GestureDetector(
                  onTap: (){
                    
                  },
                  child: greenButton())),
          Positioned(
            bottom: 5,right: 10,left: 10,
            child: SvgPicture.asset('images/Path 1.svg',)),
        ],
      ));
}
List<Widget> albumpics = [
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItems3Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
          itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      itemsOverView(
          imageName: "images/vendorItem1Show.png",
          personPicName: "images/vendorperson1.png",
          personName: "Karl C.",
          verficiation: "Verified",
          verified: true,
          itemName: "Gold Blue-Eyes White Dragon PSA 8",
          price: "200\$ Asking Price"),
      itemsOverView(
          imageName: "images/vendorItems2Show.png",
          personPicName: "images/vendorPerson2.png",
          personName: "Alex F.",
          itemName: "Adidas Yeezy Boost 350 V2",
          price: "200\$ Asking Price",
          distance: "7 miles away",
          verified: false),
      
    ];
    
// =======
//         body: GestureDetector(
//           onTap: (){
//             Get.to(VendorItems2());
//           },
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//             topWid(context),
//             itemsOverView(
//                 context: context,
//                 imageName: "images/vendorItem1Show.png",
//                 personPicName: "images/vendorperson1.png",
//                 personName: "Karl C.",
//                 verficiation: "Verified",
//                 verified: true,
//                 itemName: "Gold Blue-Eyes White Dragon PSA 8",
//                 price: "200\$ Asking Price"),
//             //SizedBox(height: MediaQuery.of(context).padding.top * 0.5),
//             selectionItems(context: context)
//           ]),
//         ));
//   }
// >>>>>>> f6702678c75443e99d2ce664db0ea357def0b8a3
}