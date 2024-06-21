import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/canteen_e_commerse/cubit/cubit.dart';

import '../../../shared/styles/color.dart';
import '../../../shared/styles/style.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';


class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ChildCubit(),
      child: BlocConsumer<ChildCubit,ChildStates>(
        listener: (context,state){
          if (state is ChildLimitState) print('Child Limit State ${state.limit.round()}');
        },
        builder: (context,state){
          return Container(
            width: double.infinity,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Text("Daily Limit", style: Styles.style25),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "You can control the daily spending limit for a child in both cases: payment via wallet or cash",
                      style: Styles.stylegray15),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                          '${ChildCubit.get(context).limit.round()}',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
                      SizedBox(width: 5,),
                      Text(
                          'EGP',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Slider(
                      value: ChildCubit.get(context).limit,
                      max: 300.0,
                      min: 0.0,
                      onChanged: (value){
                        ChildCubit.get(context).limitValue(value);
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Save"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 56),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Close"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 56),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
