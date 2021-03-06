import 'package:club_manager/ServerProvider.dart';
import 'package:club_manager/URL.dart';
import 'package:club_manager/entity/PhotoEntity.dart';
import 'package:club_manager/pages/Gallery/YearMenu.dart';
import 'package:club_manager/pages/accounting/coach/coach.dart';
import 'package:club_manager/pages/accounting/coach/coach_fee.dart';
import 'package:club_manager/pages/accounting/coach/show_detail_of_coach_accounting.dart';
import 'package:flutter/material.dart';

class NewCoachProfile extends StatefulWidget {
  final CoachEntity user;

  NewCoachProfile({this.user});

  @override
  _NewCoachProfileState createState() => _NewCoachProfileState();
}

class _NewCoachProfileState extends State<NewCoachProfile> {
  List _years = ["1398", "1399", "1400", "1401", "1402"];
  CategoryItemList categoryItemList;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentYear;
  bool isLoading=true;
  bool first;
  static List<DropdownMenuItem<CategoryItem>> _items;
  static CategoryItem currVal;
  getCategory({String page: URL.getYearCategoty})async{
    categoryItemList = await getYearList(url: page);
    categoryItemList.categoryList.forEach((val) {
      _items.add(DropdownMenuItem<CategoryItem>(
        value: val,
        child: Container(
          child: Text(
            val.title,
            textDirection: TextDirection.rtl,
            //style: TextStyle(color: Colors.white),
          ),
          alignment: Alignment.center,
        ),
      ));
    }
    );
    setState(() {
      first = false;
      isLoading = false;
      currVal = _items[0].value;
    });
  }

  @override
  void initState() {
    _items=List();
    _dropDownMenuItems = getDropDownMenuItems();
    _currentYear = _dropDownMenuItems[0].value;
    super.initState();
  }

  // here we are creating the list needed for the DropDownButton
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String year in _years) {
      items.add(new DropdownMenuItem(value: year, child: new Text(year)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      getCategory();
    }
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(widget.user.image),
                        ),
                      ),
                    ),
                    //coaches[index].familyName
                    Container(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "نام :  " + widget.user.user.first_name,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "فامیل : " + widget.user.user.last_name,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          CoachFee(
                            width: MediaQuery.of(context).size.width *40,
                            height: MediaQuery.of(context).size.height * .20,
                            userName: widget.user.user.username,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "صورتحساب",
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: <Widget>[
                      Text("اتخاب سال : "),
//                      new DropdownButton(
//                        value: _currentYear,
//                        items: _dropDownMenuItems,
//                        onChanged: changedDropDownItem,
//                      ),
                      !isLoading ? DropdownButton<CategoryItem>(
                        elevation: 15,
                        iconSize: 25.0,
                        items: _items,
                        //style: TextStyle(inherit: false, color: Colors.black),
                        value: currVal,
                        onChanged: (CategoryItem item){
                          setState(() {
                            currVal = item;
                          });
                        },
                      ) : SizedBox(height: 0,width: 0,),
                    ],
                  )
                ],
              ),
            ),
            createMonth(
                name: "فروردین",
                color: Colors.green,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "01",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "اردیبهشت",
                color: Colors.green,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "02",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "خرداد",
                color: Colors.green,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "03",
                        year: currVal.title);
                  }));
                }),
            Divider(),
            createMonth(
                name: "تیر",
                color: Colors.redAccent,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "04",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "مرداد",
                color: Colors.redAccent,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "05",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "شهریور",
                color: Colors.redAccent,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "06",
                        year: currVal.title);
                  }));
                }),
            Divider(),
            createMonth(
                name: "مهر",
                color: Colors.orange,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "07",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "آبان",
                color: Colors.orange,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month:"08",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "آذر",
                color: Colors.orange,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month:"09",
                        year: currVal.title);
                  }));
                }),
            Divider(),
            createMonth(
                name: "دی",
                color: Colors.grey,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "10",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "بهمن",
                color: Colors.grey,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                        userName: widget.user.user.username,
                        month: "11",
                        year: currVal.title);
                  }));
                }),
            createMonth(
                name: "اسفند",
                color: Colors.grey,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ShowMonthActivity(
                      userName: widget.user.user.username,
                      month:"12",
                      year: currVal.title,
                    );
                  }));
                }),
          ],
        ),
      ),
    );
  }

  Widget createMonth({String name, Color color, final onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Text(name),
          leading: CircleAvatar(
            backgroundColor: color,
            child: Text(
              name[0],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void changedDropDownItem(String selectedYear) {
    print(selectedYear);
    setState(() {
      _currentYear = selectedYear;
    });
  }
}
