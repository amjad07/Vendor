import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

import 'SignUp4.dart';

class SignUp3 extends StatefulWidget {
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: c_white,
      appBar: appbar(context, title: "Sign Up"),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          scrollBehavior: MyBehaviora(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logo(),
                text("Your birthday. It won't be public to others.",
                    isCentered: true, maxLine: 2),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 50),
                  height: 100,
                  child: CupertinoDatePicker(
                      backgroundColor: c_white,
                      initialDateTime: DateTime.now(),
                      minimumYear: 1921,
                      mode: CupertinoDatePickerMode.date,
                      maximumYear: DateTime.now().year,
                      onDateTimeChanged: (DateTime a) {}),
                ),
                textInputContainer(
                    label: "Phone Number (Optional)",
                    inputType: TextInputType.phone),
                textwithSwitch(label: "Show phone number on profile"),
                Spacer(flex: 1,),
                buttonWid(
                    label: "Next",
                    border: true,
                    function: () {
                      Get.to(SignUp4());
                    },
                    butColor: c_button_inactive),
                fourCircleDots(a: 1),
              ],
            ),
          ),]
      ),
    ));
  }
}
