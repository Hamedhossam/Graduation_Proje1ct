import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../shared/components/custom_app_par.dart';
import '../../shared/styles/color.dart';
import '../../shared/styles/style.dart';
import 'components/components_receipt.dart';
import 'components/info_widget.dart';
import 'components/payment_receipt_widget.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:  buildAppBar(title: 'Receipt',context: context),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 30, left: defaultPadding, right: defaultPadding),
        child: Container(
          color: kPrimarywhiteColor,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Maria Ozilea',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.style25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Colors.black,
                      ),
                      InfoWidget(
                          studentName: "hasnaa ahmed",
                          receiptDate: "8/4/2001",
                          receiptTime: "11:30",
                          canteenUser: "ahmed"),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                          height: 410,
                          child: SingleChildScrollView(
                              child: ItemWidget(
                                  itemName: "Juhayna Mix berry Milk",
                                  numberPcs: '2',
                                  priceOfOne: '10',
                                  priceOfPcs: '20'))),
                      Divider(
                        color: Colors.black,
                      ),

                      PaymentReceiptWidget(totalMoney: '270', paymentBy: 'wallet'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
