import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class ItemsForSale extends StatefulWidget {
  const ItemsForSale({Key? key}) : super(key: key);

  @override
  _ItemsForSaleState createState() => _ItemsForSaleState();
}

class _ItemsForSaleState extends State<ItemsForSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      appBar: topWid(),
      body: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              text("Items For Sale",
                  isCentered: true,
                  textColor: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 39.0),
              curveLine(),
              SizedBox(height:10),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                children: List.generate(12,(index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                  ),),),),
              text("Sold Items",
                  isCentered: true,
                  textColor: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 39.0),
              curveLine(),
              SizedBox(height:10),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              
              crossAxisCount: 4,
              children: List.generate(
              8,
              (index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                ),
              ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  AppBar topWid() {
  return AppBar(backgroundColor: c_white,
    title: Image.asset("images/VendrLogoV2.png"),
    centerTitle: true,
    elevation: 0,
   toolbarHeight: 50,
    
    leading: GestureDetector(
        onTap: () => Get.back(),
        child:Container(
        padding: const EdgeInsets.all(8),
            child: SvgPicture.asset("images/backarrow.svg")),),
        
    flexibleSpace: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
        curveLine()],
    ),
  );
}
}