import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scm/shared/styles/color.dart';
import 'package:scm/shared/styles/style.dart';

import 'components/children_widget.dart';
import 'components/profile_widget.dart';
import 'components/transaction_widget.dart';

class NewMainScreenParent extends StatelessWidget {
  const NewMainScreenParent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ProfileWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Children",
                          style: Styles.style22,
                        ),
                      ],
                    ),
                  ),
                  ChildrenWidget(),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child:
                              Text("Last Transactions", style: Styles.style22),
                        ),
                      ],
                    ),
                  ),
                  LastTransactionWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
