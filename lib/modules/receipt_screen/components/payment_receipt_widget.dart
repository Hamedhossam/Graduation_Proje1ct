import 'package:flutter/material.dart';

import '../../../shared/styles/style.dart';

// total and by cash or wallet

class PaymentReceiptWidget  extends StatelessWidget {
  const PaymentReceiptWidget({super.key, required this.totalMoney, required this.paymentBy});

  final String totalMoney,paymentBy;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Text('Total',style: Styles.style22,),
            Spacer(),
            Text(
              totalMoney,
              style: Styles.styleBold18,
            )
          ],
        ),
        Row(
          children: [
            Text('Payment',style: Styles.style22,),
            Spacer(),
            Text(
              paymentBy,
              style: Styles.styleBold18,
            ),

          ],
        ),
    ]
    );
  }
}
