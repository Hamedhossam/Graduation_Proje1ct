import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/main_screen_child/cubit/states.dart';


class ChildCubit extends Cubit<ChildStates> {
  ChildCubit() : super(ChildInitialState());
  //TeacherCubit cubit = BlocProvider.of(context);

  static ChildCubit get(context)=>BlocProvider.of(context);

  double limit = 20 ;

  void limitValue(value){
    limit=value;
    emit(ChildLimitState(limit));
  }

}
