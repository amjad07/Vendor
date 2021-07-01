import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/main.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class ProductAsking extends StatefulWidget {
  @override
  _ProductAskingState createState() => _ProductAskingState();
}

class _ProductAskingState extends State<ProductAsking> {
  String productImage = "images/testphotos.png";
  String sellerName = "Alex";
  String productName = "Adidas Yeezy Boost 350 V2";
  String price = "Asking Price: \$220";

  // ignore: non_constant_identifier_names
  ProductAsking(String productImage, String sellerName, String productName,
      String price) {
    this.productName = productName;
    this.sellerName = sellerName;
    this.productImage = productImage;
    this.price = price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding:  EdgeInsets.fromLTRB(30,MediaQuery.of(context).padding.top+10,30,20),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(productImage), fit: BoxFit.fill)),
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text(productName,fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  maxLine: 2,
                  isCentered: true),
              text(price,
                  fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  textColor: Colors.white,
                  maxLine: 2,
                  isCentered: true),
              text("Nice",
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  textColor: mainColor,
                  maxLine: 2,
                  isCentered: true),
              text("Find!",
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  textColor: mainColor,
                  maxLine: 2,
                  isCentered: true,
                  height: 1.0),
              Spacer(flex: 3,),
              _messageBox(),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: ()=>Get.back(),
                child: text("Save for later and go back",
                    textColor: mainColor,
                    fontSize: 23.0,
                    fontWeight: FontWeight.normal,
                    lineThrough: true),
              ),
            ],
          ),
        ),
          ]),)
    );
  }
  Widget _messageBox(){
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: boxDecoration(
        radius: 30,
        bordercolor: mainColor,
        borderWidth: 1.0,
        fillcolor: Colors.transparent,
      ),
      child: Column(children: [
        text("Send Alex a message...",
            textColor: Colors.white,
            fontSize: 27.0,
            fontWeight: FontWeight.bold),
        text("I am intrested in this item",
            textColor: mainColor,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,
            lineThrough: true),
        text("Is this item still available?",
            textColor: mainColor,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,
            lineThrough: true),
        text("What condition is this?",
            textColor: mainColor,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,
            lineThrough: true),
        text("Do you deliver?",
            textColor: mainColor,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,
            lineThrough: true),
        text("I will buy it now",
            textColor: mainColor,
            fontSize: 23.0,
            fontWeight: FontWeight.normal,
            lineThrough: true),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        textInputContainer(
            label: "",
            hint: "Send custom message to seller",
            rad: 20,
            suffixIcon: true,
            i: Icons.send,
            iconColor: Colors.blueGrey)
      ]),
    );
  }
}
