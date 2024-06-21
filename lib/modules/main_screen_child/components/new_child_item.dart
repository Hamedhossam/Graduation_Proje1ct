import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/canteen_e_commerse/canteen_main_screen.dart';

import '../../../models/item_widget.dart';
import '../../payment_Screens/payment_details.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';
import 'bottom_sheet_screen.dart';

class NewChildItem extends StatelessWidget {
  const NewChildItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChildCubit(),
      child: BlocConsumer<ChildCubit, ChildStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                      child: defultItem(
                          onTTap: () {},
                          title: "Homework",
                          img: "assets/images/homework.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: defultItem(
                          onTTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CanteenMainScreen()));
                          },
                          title: "Canteen",
                          img: "assets/images/fast-food.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: defultItem(
                          onTTap: () {
                            showModalBottomSheet(
                                //isScrollControlled: true,
                                // backgroundColor: kPrimaryLightColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                context: context,
                                builder: (BuildContext context) {
                                  return BottomSheetScreen();
                                });
                          },
                          title: "Limit",
                          img: "assets/images/limit.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: defultItem(
                          onTTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PaymentDetailsView()));
                          },
                          title: "wallet",
                          img: "assets/images/wallet.png")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
