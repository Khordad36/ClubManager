import 'package:club_manager/ServerProvider.dart';
import 'package:club_manager/URL.dart';
import 'package:club_manager/entity/PhotoEntity.dart';
import 'package:club_manager/pages/accounting/coach/absent_informationDialg.dart';
import 'package:club_manager/pages/accounting/coach/activity.dart';
import 'package:club_manager/pages/accounting/coach/card_activity.dart';
import 'package:club_manager/pages/accounting/coach/coach.dart';
import 'package:club_manager/pages/signup&login/register/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:jalali_date/jalali_date.dart';
import 'package:unicorndial/unicorndial.dart';

class ShowMonthActivity extends StatefulWidget {
  final String userName;
  final String month;
  final String year;
  ShowMonthActivity(
      { this.userName, this.month, this.year});

  @override
  _ShowMonthActivityState createState() => _ShowMonthActivityState();
}

class _ShowMonthActivityState extends State<ShowMonthActivity> {
  bool _isLoading;
  PresenceEntity presenceEntity;
  ShowMonthActivityList monthActivity;
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  void presence({bool presence}) async {
    _isLoading = true;
    try{
      presenceEntity = await setPresence(
          url: URL.setPresence,
          userName: widget.userName,
          attendance: presence,
          date: widget.year+widget.month+"01");
    }catch(e){
      scaffoldState.currentState.showSnackBar(SnackBar(content: Text("خطا در ثبت اطلاعات لطفا وضعیت شبکه خود را برسی کنید"),duration: Duration(seconds: 1),));
    }
    setState(() {
      _isLoading = false;
    });
    if(presenceEntity==null){
      scaffoldState.currentState.showSnackBar(SnackBar(content: Text("خطا در ثبت اطلاعات لطفا وضعیت شبکه خود را برسی کنید"),duration: Duration(seconds: 1),));
    }else  scaffoldState.currentState.showSnackBar(SnackBar(content: Text("با موفقیت ثبت شد"),duration: Duration(seconds: 1),));
  }

  @override
  void initState() {
    _isLoading = false;
    super.initState();
  }
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {

    var childButtons = List<UnicornButton>();
    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "حضور",
        currentButton: FloatingActionButton(
          heroTag: "حضور",
          backgroundColor: Colors.green,
          mini: true,
          child: Icon(Icons.check),
          onPressed: () {
            presence(presence: true);
            if(presenceEntity== null){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("خطا در ثبت اطلاعات لطفا وضعیت شبکه خود را برسی کنید"),duration: Duration(seconds: 1),));
            }
          },
        )));

//    childButtons.add(UnicornButton(
//        hasLabel: true,
//        labelText: "تاخیر",
//        currentButton: FloatingActionButton(
//            onPressed: () {
//              coaches[widget.coachIndex].yearActivity[widget.yearIndex].month[widget.monthIndex].delay++;
//              setState(() {
//                String date = "جلسه ی " +
//                    PersianDate.now().toString(showDate: true, showTime: false);
//                coaches[widget.coachIndex]
//                    .yearActivity[widget.yearIndex]
//                    .month[widget.monthIndex]
//                    .activity
//                    .add(Activity(
//                      text: Text("تاخیر",style: TextStyle(color: Colors.orange),),
//                      title: date,
//                      cost: coaches[widget.coachIndex].delayCost,
//                      isPay: false,
//                    ));
//              });
//            },
//            heroTag: "تاخیر",
//            backgroundColor: Colors.orange,
//            mini: true,
//            child: Icon(Icons.error_outline))));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "غیبت",
        currentButton: FloatingActionButton(
          heroTag: "غیبت",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.close),
          onPressed: () {
            presence(presence: false);
            if(presenceEntity== null){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("خطا در ثبت اطلاعات لطفا وضعیت شبکه خود را برسی کنید"),duration: Duration(seconds: 1),));
            }
          },
        )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "پرداخت",
        currentButton: FloatingActionButton(
          heroTag: "پرداخت",
          backgroundColor: Colors.blue,
          mini: true,
          child: Icon(Icons.credit_card),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return addCost(
                      month: widget.month,
                      year: widget.year);
                });
          },
        )));
    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "اطلاعات",
        currentButton: FloatingActionButton(
          heroTag: "اطلاعات",
          backgroundColor: Colors.blue,
          mini: true,
          child: Icon(Icons.info),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  String date = widget.year+ widget.month +"01";
                  print(date);
                  String username = widget.userName;
                  return absentInformationDialog(userName: username, Date: date);
                });
          },
        )));

    getCoachDetailOfMonthList({String page: URL.coachpay}) async {
      String username = widget.userName;
      String date = widget.year+widget.month+"01";
      print(date);
      print(username);
      monthActivity =
      await getCoachDetailOfMonth(url: page,username:username,date: date);
      setState(() {
        isLoading = false;
      });
    }
    if(isLoading){
    getCoachDetailOfMonthList();
    }
    return Scaffold(
      key: scaffoldState,
      floatingActionButton: UnicornDialer(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
          parentButtonBackground: Colors.redAccent,
          orientation: UnicornOrientation.VERTICAL,
          parentButton: Icon(Icons.add),
          childButtons: childButtons),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
          itemCount: monthActivity.monthActivty.length,
          itemBuilder: (context,index){
            return CardActivity(onLongPress: null,date:monthActivity.monthActivty[index].date,
            id: monthActivity.monthActivty[index].id,
            price: monthActivity.monthActivty[index].price,
            );
          }),
    );
  }

  static GlobalKey<FormState> key = GlobalKey<FormState>();

  Widget costumDialog({int coachIndex, int monthIndex, int activityIndex}) {
    final DialogHeight = MediaQuery.of(context).size.height * .45;
    String numberOnSaved;
    String detaill;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.blueGrey,
      child: Container(
        height: DialogHeight,
        child: ListView(
          children: <Widget>[
            Container(
              height: DialogHeight * .25,
              child: Center(
                child: Text(
                  "پرداخت",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
            Form(
              key: key,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormTextField(
                      label: "توضیحات",
                      icon: Icons.info,
                      valid: (String str) {
                        if (str.length < 2) {
                          return "لطفا توضیحات خود را وارد کنید";
                        }
                      },
                      onSaved: (String str) {
                        detaill = str;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormTextField(
                      icon: Icons.credit_card,
                      keyType: TextInputType.number,
                      valid: (String str) {
                        if (str.length != 6) {
                          return "گد پیگیری اشتباه است";
                        }
                      },
                      label: "شماره پیگیری",
                      onSaved: (String str) {
                        numberOnSaved = str;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "تایید",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      if (key.currentState.validate()) {
                        key.currentState.save();
//                        coaches[coachIndex]
//                            .yearActivity[widget.yearIndex]
//                            .month[monthIndex]
//                            .activity[activityIndex]
//                            .isPay = true;


//                        coaches[coachIndex]
//                        .yearActivity[widget.yearIndex]
//                            .month[monthIndex]
//                            .activity[activityIndex]
//                            .transaction = numberOnSaved;
//                        coaches[coachIndex]
//                        .yearActivity[widget.yearIndex]
//                            .month[monthIndex]
//                            .activity[activityIndex]
//                            .details = detaill;
                        Navigator.of(context).pop();
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String title;
  String cost;
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget addCost({String year, String month}) {
    final dialogHeight = MediaQuery.of(context).size.height * .35;

    addpay({String page: URL.addPay,String pay}) async {
      String username = widget.userName;
      String date = widget.year+widget.month+"01";
      print(date);
      print(username);
      ShowMonthActivityEntity payComponent;
      try{
        payComponent=await addPayment(url: page,userName: username,date: date,price: pay);

      }catch(e){
        scaffoldState.currentState.showSnackBar(SnackBar(content: Text("خطا در برقراری ارتباط با سرور")));
      }
      print(payComponent);
      setState(() {
        isLoading = false;
        monthActivity.monthActivty.add(payComponent);
      });
    }

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.blueGrey,
      child: Container(
        height: dialogHeight,
        child: ListView(
          children: <Widget>[
            Form(
              key: formKey,
              child: Column(
                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: FormTextField(
//                      onSaved: (String str) {
//                        title = str;
//                      },
//                      valid: (String str) {
//                        if (str.length < 2) {
//                          return "لطفا عنوان مورد نظر خود را وارد کنید";
//                        }
//                      },
//                      icon: Icons.title,
//                      label: "عنوان",
//                    ),
//                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormTextField(
                      icon: Icons.credit_card,
                      label: "هزینه",
                      valid: (String str) {
                        if (str.length < 4) {
                          return "لطفا مبلغ موذد نظر خود را وارد کنید";
                        }
                      },
                      onSaved: (String str) {
                        cost = str;
                      },
                      keyType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 85.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: ()async {
                  setState(() {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      int price = int.parse(cost);
                      addpay(pay: cost);
                      sendCommerce();
//                      setState(() {
//                        coaches[coachIndex]
//                            .yearActivity[widget.yearIndex]
//                            .month[monthIndex]
//                            .activity
//                            .add(Activity(
//                                isPay: true,
//                                title: "پرداخت",
//                                cost: cost,
//                                text: Text(
//                                  "پرداخت",
//                                  style: TextStyle(color: Colors.blue),
//                                )));
//                      });
                    }
                  });
                  Navigator.pop(context);
                },
                color: Colors.grey,
                child: Text(
                  "اظافه کردن",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  ExerciseUserListEntity entity;
  List<CommerceList> commerceList;
  sendCommerce() async {
    CommerceList commerceEntity;
    commerceEntity = await createCommerce(
        url: URL.commerceCreate,
        price: cost,
        title: "پرداختی مربیان",
        is_income: false);
    if (commerceEntity != null) {
      //fistLoad = true;
      commerceList.clear();
//      key.currentState.showSnackBar(SnackBar(
//        content: Text("درخواست شما ثبت شد "),
//      ));
    } else {
//      key.currentState.showSnackBar(SnackBar(
//        content: Text("خطا در برقراری ارتباط با سرور "),
//      ));
    }

//                              setState(() {
//                                //dialogLoading = false;
//                              });
  }

}
