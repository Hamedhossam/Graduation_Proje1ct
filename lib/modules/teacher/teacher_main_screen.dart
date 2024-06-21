import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/teacher/cubit/cubit.dart';
import 'package:scm/modules/teacher/cubit/states.dart';

import '../../shared/styles/color.dart';
import '../../shared/styles/style.dart';
import 'components/drop_dowen_box.dart';
import 'components/input_teacher.dart';
class TeacherMainScreen extends StatelessWidget {
  const TeacherMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var s = BlocProvider.of(context);
    return BlocProvider(
      create: (BuildContext context)=>TeacherCubit(),
      child: BlocConsumer<TeacherCubit,TeacherStates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar:AppBar(
              backgroundColor: kPrimaryColor,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'Hager Mohamed',
                textAlign: TextAlign.center,
                style: Styles.style25white,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DrobDownPart(),
                    InputTeacher(),
                    const SizedBox(height: defaultPadding),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                          "send".toUpperCase()
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
