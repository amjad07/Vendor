import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vendr/utils/appWidget.dart';
import 'package:vendr/utils/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: ()=>Get.back(),
          child: Container(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                "images/backarrow.svg",
              )),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.grey,
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      body: Column(
        children: [
          greyInitialChar("S"),
          whiteCont("Shoes"),
          curveLine(),
          whiteCont("Sunglasses"),
          SizedBox(
            height: 20,
          ),
          greyInitialChar("T"),
          whiteCont("Tankpots"),
          curveLine(),
          whiteCont("T-shirts"),
          SizedBox(
            height: 20,
          ),
          greyInitialChar("U"),
          whiteCont("Underwear"),
          SizedBox(
            height: 20,
          ),
          greyInitialChar("V"),
          whiteCont("Vapes"),
          curveLine(),
          whiteCont("Vaccum"),
        ],
      ),
    );
  }

  Widget greyInitialChar(String label) => Container(
        padding: const EdgeInsets.only(left: 20),
        color: c_grey2,
        width: double.infinity,
        child: Row(
          children: [
            text(label),
            SizedBox(
              width: 6,
            ),
          ],
        ),
      );
}

class DataSearch extends SearchDelegate<String> {
  final cities = ["Foracort", "Paracetamol", "Nims", "Crocin"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "dfk");
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();

    // return Scaffold(
    //   body: Center(
    //     child: Text(suggestionList.toString()),
    //   ),
    // );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}