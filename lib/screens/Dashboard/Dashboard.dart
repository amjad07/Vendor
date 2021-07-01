import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';

import 'Cart/cartView.dart';
import 'Profile/Profile.dart';
import 'Vendor/vendor.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var fragment=[ProfileScreen(),VendorItems1(),CartView()];
  int selected=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      appBar: topWid(),
      body: fragment[selected]
    );
  }
  AppBar topWid() {
  return AppBar(
    backgroundColor: c_white,elevation: 0,automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              setState(() {
                selected=0;
              });
            },
          child: SvgPicture.asset(selected==0?img_profile2:img_profile1)),
        GestureDetector(
            onTap: () {
              setState(() {
                selected=1;
              });
            },
          child: selected==1?SvgPicture.asset(img_vender2)
          :SvgPicture.asset(img_vender1,height: 38,width: 80,color: c_grey3,)
          ),
        GestureDetector(
            onTap: () {
              setState(() {
                selected=2;
              });
            },
          child: SvgPicture.asset(selected==2?img_cart2:img_cart1)),
      ],
    ),
    flexibleSpace: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //SizedBox(height: 80,),
       curveLine()
      ],
    ),
  );
}


}