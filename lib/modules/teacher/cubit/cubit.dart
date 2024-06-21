import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/teacher/cubit/states.dart';

class TeacherCubit extends Cubit<TeacherStates> {
  TeacherCubit() : super(TeacherInitialState());
  //TeacherCubit cubit = BlocProvider.of(context);

  static TeacherCubit get(context)=>BlocProvider.of(context);

}
