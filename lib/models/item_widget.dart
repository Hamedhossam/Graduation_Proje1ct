import 'package:flutter/cupertino.dart';

import '../shared/styles/color.dart';

Widget defultItem({
  double? picHight=42,
  required void Function() onTTap,
  required String title,
  required String img,
})=>Expanded(
  child: GestureDetector(
    onTap: onTTap,
    child: Container(
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            img,
            width: picHight,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            title,
            style: TextStyle(color: kPrimarywhiteColor),
          ),
        ],
      ),
    ),
  ),
);