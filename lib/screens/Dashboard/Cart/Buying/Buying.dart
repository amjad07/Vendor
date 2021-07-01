import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';


class Buying extends StatefulWidget {
  const Buying({Key? key}) : super(key: key);

  @override
  _BuyingState createState() => _BuyingState();
}

class _BuyingState extends State<Buying> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollConfiguration(
        behavior: MyBehaviora(),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(0,0,0 ,0),
          children: [
          _savedItems(),
          _savedItemList(),
          recentMsg(),
          _chatHead(),
        ]),
      ),
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
  
  Widget _savedItemList(){
    return Container(
          padding: const EdgeInsets.all(8),
          height: 110,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("images/profilephoto.png"),
                        ),
                        text("24\$")
                      ],
                    ),
                  ),
                );
              }),
        );
  }
  Widget _savedItems(){
    return Row(
          children: [
            SizedBox(width: 8,),
            CircleAvatar(
              radius: 20,
              backgroundColor: mainColor,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: c_white,
                child: Center(
                  child: text("6",
                      fontSize: 24.0,
                      textColor: mainColor,isCentered: true,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            text("Saved Items",
                textColor: mainColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)
          ],
        );
  }
}
