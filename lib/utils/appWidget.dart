import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'colors.dart';
import 'images.dart';

Widget curveLine() => Container(
      height: 1,
      width: double.infinity,
      color: mainColor,
    );

Widget greyCont(String label) => Container(
      padding: const EdgeInsets.only(left: 20),
      color: c_grey2,
      width: double.infinity,
      child: Row(
        children: [
          text(label),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.edit,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
    );

Widget whiteCont(String label) => Container(
      padding: const EdgeInsets.only(left: 20),
      color: c_white,
      width: double.infinity,
      child: text(label),
    );

// text with switch

Widget textwithSwitch({required String label}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(label, textColor: mainColor),
        Switch(
          value: true,
          onChanged: (bool newValue) {},
          activeColor: mainColor,
        ),
      ],
    );

// condition choosing

// component of text
Widget text(
  String text, {
  var fontWeight = FontWeight.normal,
  var fontSize = textSizeLargeMedium,
  Color textColor = c_textColor,
  var fontFamily = "Rubik",
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
  var height: 1.5,
}) {
  return Text(
    textAllCaps ? text.toUpperCase() : text,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: textColor,
      height: height,
      letterSpacing: latterSpacing,
      decoration: lineThrough ? TextDecoration.underline : TextDecoration.none,
    ),
  );
}

// componenet of logo
Widget logo({bool welcomeText = false}) {
  return Container(
    width: double.infinity,
    child: Stack(
      children: [
        Center(
            child: SvgPicture.asset(
          img_logo,
          placeholderBuilder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(30.0),
              child: const CircularProgressIndicator()),
        )),
        Positioned(
          bottom: 15,
          right: 30,
          left: 30,
          child: Divider(
            color: mainColor,
          ),
        ),
        welcomeText
            ? Positioned(
                top: 10,
                right: 50,
                left: 50,
                child: text("Welcome to", isCentered: true),
              )
            : Container(),
      ],
    ),
  );
}

// component of an appbar
AppBar appbar(context, {required String title}) {
  return AppBar(
    backgroundColor: c_white,
    title: Row(
      children: [
        text(title, fontWeight: FontWeight.bold, fontSize: 20.0),
      ],
    ),
    elevation: 0,
   toolbarHeight: 50,
    titleSpacing: 1.0,
    leading: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              "images/backarrow.svg",
            ))),
    flexibleSpace: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
        curveLine()],
    ),
  );
}
Widget editIcon(){
  return Container(
                  height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: c_white,),
                  child: SvgPicture.asset("images/edit.svg",color: mainColor,));
}

// component of boxdecoration for containers
BoxDecoration boxDecoration(
    {double radius = 2,
    borderWidth = 0.0,
    Color bordercolor = Colors.transparent,
    Color fillcolor = c_white,
    shadowColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: fillcolor,
    boxShadow: showShadow
        ? [
            BoxShadow(
                color: shadowColor.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(2.0, 2.0))
          ]
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(
      color: bordercolor,
      width: borderWidth,
    ),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

// component of four circlular dots for menu
Widget fourCircleDots({
  required int a,
}) {
  return Container(
    height: 40,
    child: Center(
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: mainColor,
              child: CircleAvatar(
                radius: 8.5,
                backgroundColor: i == a ? mainColor : c_white,
              ),
            ),
          );
        },
      ),
    ),
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

// component of text input field
Widget textInputContainer({
  double rad = 0.0,
  TextInputType inputType = TextInputType.text,
  TextEditingController? textEditingController,
  String label = "",
  hint,
  bool obscure = false,
  IconData? i,
  bool icon = false,
  bool suffixIcon = false,
  Color? iconColor,
  bool shadow = false,
  double? height,
  double? width,
}) {
  return Container(
    height: height,
    width: width,
    margin: const EdgeInsets.only(bottom: 10),
    decoration: boxDecoration(
      radius: rad,
      showShadow: shadow,
      fillcolor: c_white,
    ),
    child: TextFormField(
      keyboardType: inputType,
      autofocus: false,
      obscureText: obscure,
      obscuringCharacter: "*",
      controller: textEditingController,
      style: const TextStyle(
        color: c_textColor,
        fontFamily: "Rubik",
        fontWeight: FontWeight.w900,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: c_white,
          hintText: hint,
          hintStyle: TextStyle(
              color: c_textColor,
              fontFamily: "Rubik",
              fontSize: textSizeMedium,
              fontWeight: FontWeight.w600),
          labelStyle: TextStyle(
              color: c_textColor,
              fontFamily: "Rubik",
              fontSize: textSizeSMedium,
              fontWeight: FontWeight.w600),
          prefixIcon: icon == false
              ? null
              : Icon(
                  i,
                  color: iconColor,
                  size: 20,
                ),
          suffixIcon: suffixIcon == false
              ? null
              : Icon(
                  i,
                  color: iconColor,
                  size: 30,
                ),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(rad),
              borderSide: BorderSide(
                  color: Color(0xffF1F1F1),
                  style: BorderStyle.solid,
                  width: 1.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(rad),
              borderSide: BorderSide(
                  color: mainColor, width: 1.0, style: BorderStyle.solid)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(rad),
              borderSide: BorderSide(
                  color: mainColor, style: BorderStyle.solid, width: 1.0))),
    ),
  );
}

// component of button
Widget buttonWid({
  double rad = 16.0,
  double height = 50.0,
  double width = double.infinity,
  required String label,
  Color butColor = mainColor,
  Color textcolor = c_white,
  FontWeight? fontWeight,
  dynamic? fontsize,
  borderColor = c_white,
  required Function function,
  bool border = false,
  bool caps = false,
  double borderWidth = 4.0,
  bool icon = false,
}) {
  return
      // GestureDetector(
      //   onTap: ()=>function(),
      //   child: Container(
      //     height: 50,
      //     decoration: boxDecoration(radius: rad,bordercolor: c_white,borderWidth: borderWidth,fillcolor: butColor),
      //     child: text(label,fontSize: textSizeMedium, textAllCaps: caps, textColor: textcolor),
      //   ),
      // );
      SizedBox(
    width: width,
    height: height,
    child: MaterialButton(
      //disabledElevation: 0,
      height: height,
      minWidth: width,
      color: butColor,
      padding: const EdgeInsets.all(8),
      shape: border == false
          ? RoundedRectangleBorder(borderRadius: new BorderRadius.circular(rad))
          : RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(rad),
              side: BorderSide(color: borderColor, width: borderWidth)),
      onPressed: () => function(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(
            label,
            fontSize: fontsize,
            textAllCaps: caps,
            textColor: textcolor,
            fontWeight: fontWeight,
          ),
          Container(
            child: !icon
                ? null
                : SvgPicture.asset(
                    "images/justlogo.svg",
                    width: 50,
                    height: 50,
                    color: Colors.white,
                  ),
          )
        ],
      ),
    ),
  );
}

// components of vendors type app bar

// selection of items

Widget greenButton() {
  return Container(
      child: Stack(children: [
    Image.asset('images/Ellipse 4.png'),
    Positioned(
        left: 5.0,
        right: 5,
        bottom: 5,
        top: 5.0,
        child: Image.asset('images/search.png'))
  ]));
}

Widget blueButton() {
  return Container(
      child: Stack(children: [
    Image.asset('images/Ellipse 1.png'),
    Positioned(
        left: 7.0, bottom: 10.0, child: Image.asset('images/just check.png'))
  ]));
}

Widget yellowBuutton() {
  return Container(
    child: Stack(
      children: [
        SvgPicture.asset("images/Ellipse 3.svg"),
        Positioned(
            bottom: 5,
            right: 0,
            top: 5,
            child: Image.asset(
              "images/yellowbut.png",
            )),
      ],
    ),
  );
}

Widget redButton() {
  return Container(
      child: Stack(children: [
    Image.asset('images/Ellipse 2.png'),
    Positioned(
        right: 0,
        bottom: 5,
        top: 0,
        left: 5,
        child: Image.asset('images/Line 1.png'))
  ]));
}

// viewing of items suface details
// Widget itemsOverView(
//     {context,
//     String imageName = "",
//     String personPicName = "",
//     String personName = "",
//     String verficiation = "",
//     bool verified = true,
//     String itemName = "",
//     String distance = "",
//     String price = ""}) {
//   return Stack(
//     children: [
//       Container(
//         height: MediaQuery.of(context).size.height - 230,
//         width: MediaQuery.of(context).size.width,
//         child: Image.asset(
//           imageName,
//           fit: BoxFit.fill,
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
//         child: Image.asset(personPicName),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(90, 10, 0, 0),
//         child: text(personName,
//             fontWeight: FontWeight.bold,
//             textColor: Colors.white,
//             fontSize: 30.0),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(90, 45, 0, 0),
//         child: text(verficiation,
//             fontWeight: FontWeight.bold, textColor: mainColor, fontSize: 30.0),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(199, 45, 0, 0),
//         child: verified
//             ? Image.asset(
//                 "images/just check.png",
//                 height: 43,
//                 width: 43,
//               )
//             : null,
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(20, 450, 0, 0),
//         child: text(itemName,
//             fontWeight: FontWeight.bold,
//             textColor: Colors.white,
//             fontSize: 30.0,
//             maxLine: 2,
//             isCentered: true),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(100, 535, 0, 0),
//         child: text(price,
//             fontWeight: FontWeight.normal,
//             textColor: Colors.white,
//             fontSize: 24.0,
//             maxLine: 2,
//             isCentered: true),
//       ),
//       Padding(
//         padding: const EdgeInsets.fromLTRB(90, 45, 0, 0),
//         child: text(distance,
//             fontWeight: FontWeight.normal,
//             textColor: Colors.white,
//             fontSize: 24.0,
//             maxLine: 2,
//             isCentered: true),
//       ),
//       Positioned(
//           left: MediaQuery.of(context).size.width - 50,
//           top: MediaQuery.of(context).size.height - 280,
//           child: Image.asset("images/info.png"))
//     ],
//   );
// }

Widget itemsOverView(
    {String imageName = "",
    String personPicName = "",
    int i = 1,
    String personName = "",
    String verficiation = "",
    bool verified = true,
    String itemName = "",
    String distance = "",
    String price = ""}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
    
    width: double.infinity,
    decoration: BoxDecoration(
        //color: c_red,
        image: DecorationImage(
      image: AssetImage(
        imageName,
      ),
      fit: BoxFit.fill,
    )),
    child: Stack(
      children: [
        Positioned(
          bottom: 30,
          right: 0,
          child: GestureDetector(
            onTap: (){},
            child: Image.asset("images/info.png")),
        ),
        Positioned(
          bottom: 20,
          right: 5,
          left: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              text(itemName,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  fontSize: 30.0,
                  maxLine: 2,
                  isCentered: true),
              text(price,
                  fontWeight: FontWeight.normal,
                  textColor: Colors.white,
                  fontSize: 24.0,
                  maxLine: 3,
                  isCentered: true),
              text(distance,
                  fontWeight: FontWeight.normal,
                  textColor: Colors.white,
                  fontSize: 24.0,
                  maxLine: 2,
                  isCentered: true),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                bar( i == 1 ? c_white : Colors.transparent),
                bar( i == 2 ? c_white : Colors.transparent),
                bar( i == 3 ? c_white : Colors.transparent),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(personPicName),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(personName,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.white,
                        fontSize: 30.0),
                    verified
                        ? Row(
                            children: [
                              text(verficiation,
                                  fontWeight: FontWeight.bold,
                                  textColor: mainColor,
                                  fontSize: 30.0),
                              Image.asset(
                                "images/just check.png",
                                height: 43,
                                width: 43,
                              )
                            ],
                          )
                        : text(distance,
                            fontWeight: FontWeight.normal,
                            textColor: Colors.white,
                            fontSize: 24.0,
                            maxLine: 2,
                            isCentered: true),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget bar( Color color) {
  return Expanded(
    flex: 1,
    child: Container(
      height: 3,
      
      decoration: boxDecoration(radius: 10, fillcolor: color),
    ),
  );
}



Widget recentMsg() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      text("  Recent Messages ",
          fontWeight: FontWeight.bold, textColor: mainColor, fontSize: 20.0),
      CircleAvatar(
        radius: 8,
        backgroundColor: mainColor,
      )
    ],
  );
}
smallDialog(context,String label)=>showDialog(context: context, builder: (context)=> Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(width: 100,padding: const EdgeInsets.all(5),
                              margin:  EdgeInsets.only(top: MediaQuery.of(context).padding.top+5,right: 30),
                              color: c_white,
                              child: text(label),
                              ),
                            ],
                          
                        ));

// component of an appbar
AppBar appbarOfMessaging(context,
    {required String title, String? messageType,bool textShow=true}) {
  return AppBar(
    backgroundColor: c_white,
    title: Row(
      children: [
        text(title, fontWeight: FontWeight.bold, fontSize: 20.0),
        Spacer(flex: 1,),
        textShow?Container(
          width: 2,
          height: 40,
          color: mainColor,
        ):Container(),
        SizedBox(
          width:textShow? 10:0,
        ),
        textShow?text(messageType.toString()+"  ",
            textColor: mainColor, fontSize: 30.0, fontWeight: FontWeight.bold):
            GestureDetector(
              onTap: ()=>smallDialog(context,"Remove"),
              child: Icon(Icons.more_vert,color: mainColor,size: 40,))
      ],
    ),
    elevation: 0,
    toolbarHeight: 50,
    titleSpacing: 1.0,
    leading: GestureDetector(
        onTap: () => Get.back(),
        child:Container(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
          "images/backarrow.svg",
          height: 1,
          width: 1,
        ))),
    flexibleSpace: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [SizedBox(height: 15.2), curveLine()],
    ),
  );
}

class MyBehaviora extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}