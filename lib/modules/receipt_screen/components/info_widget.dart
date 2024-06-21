import 'package:flutter/material.dart';

// info of receipt

class InfoWidget extends StatelessWidget {
  const InfoWidget(
      {super.key,
      required this.studentName,
      required this.receiptDate,
      required this.receiptTime,
      required this.canteenUser});
  final String studentName, receiptDate, receiptTime, canteenUser;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Student : $studentName'),
        Text('Date : $receiptDate        $receiptTime'),
        Text('Canteen User : $canteenUser'),
      ],
    );
  }
}
