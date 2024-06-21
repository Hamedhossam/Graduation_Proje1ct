import 'package:flutter/material.dart';
import 'package:scm/modules/payment_Screens/thank_you_view_body.dart';

import '../../shared/components/custom_app_par.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: ''),
      body: Transform.translate(
          offset: const Offset(0, -16), child: ThankYouViewBody()),
    );
  }
}
