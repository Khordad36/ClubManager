import 'package:club_manager/FakeEntity.dart';
import 'package:club_manager/pages/about_page/about_us.dart';
import 'package:club_manager/pages/about_page/update_about.dart';
import 'package:flutter/material.dart';

class AboutTabBar extends StatefulWidget {
  @override
  _AboutTabBarState createState() => _AboutTabBarState();
}

class _AboutTabBarState extends State<AboutTabBar>
    with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
//        floatingActionButton: FloatingActionButton.extended(
//          elevation: 8,
//          backgroundColor: Colors.redAccent,
//          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//            onPressed: () {
//              showDialog(
//                  context: context,
//                  builder: (context) {
//                    return updateAbout();
//                  });
//            },
//            icon: Icon(Icons.update),
//            label: Text("آپدیت")),
        appBar: AppBar(
          iconTheme: IconThemeData(size: 15.0,color: Colors.white),
          title: TabBar(
//            indicatorColor: Color.from,
          indicator: BoxDecoration(),
            controller: controller,
            tabs: [
              Tab(
                child: Text(
                  FakeData.companyName,
                  style: TextStyle(color: Colors.white,fontSize: 14.0),
                ),
              ),
              Tab(
                child: Text(
                  FakeData.programmerName,
                  style: TextStyle(color: Colors.white,fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Color(0xff37474f),
          child: TabBarView(controller: controller, children: [
            AboutUs("pa"),
            AboutUs("po"),
          ]),
        ));
  }
}
