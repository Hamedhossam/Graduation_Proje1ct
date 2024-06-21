import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';
import '../../payment_Screens/payment_details.dart';

class ChildIcon extends StatefulWidget {

  static BuildContext? get context => null;

  @override
  State<ChildIcon> createState() => _ChildIconState();
}

class _ChildIconState extends State<ChildIcon> {
  Items item1 = new Items(
      onTTap: (){},
      title: "Homework", img: "assets/images/homework.png");

  Items item2 = new Items(
    onTTap: (){},
    title: "Canteen",
    img: "assets/images/fast-food.png",
  );

  Items item3 = new Items(
    onTTap: (){
      Navigator.push(ChildIcon.context!, MaterialPageRoute(builder: (context)=>PaymentDetailsView()));

    },
    title: "wallet",
    img: "assets/images/wallet.png",
  );

  Items item4 = new Items(
    onTTap: (){
      Navigator.push(ChildIcon.context!, MaterialPageRoute(builder: (context)=>PaymentDetailsView()));

    },
    title: "wallet",
    img: "assets/images/wallet.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3,item4];
    return Container(
      height: 130,
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          //number of icon in the row
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 1,
          children: myList.map((data) {
            return GestureDetector(
              onTap: data.onTTap,
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: TextStyle(color: kPrimarywhiteColor),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  void Function()? onTTap;
  String title;
  String img;
  Items({required this.title, required this.onTTap, required this.img,context});
}
