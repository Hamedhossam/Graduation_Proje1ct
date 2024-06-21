import 'package:flutter/material.dart';
import 'package:scm/modules/payment_Screens/payment_details_view_body.dart';

import '../../shared/styles/color.dart';
import '../../shared/components/custom_app_par.dart';
import '../../shared/styles/style.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimarywhiteColor,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Payment Details',
          textAlign: TextAlign.center,
          style: Styles.style25white,
        ),
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}