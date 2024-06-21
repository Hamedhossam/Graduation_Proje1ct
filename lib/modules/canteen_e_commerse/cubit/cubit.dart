import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/canteen_e_commerse/cubit/states.dart';
import 'package:scm/modules/teacher/cubit/states.dart';

class CanteenCubit extends Cubit<CanteenStates> {
  CanteenCubit() : super(CanteenInitialState());

  static CanteenCubit get(context)=>BlocProvider.of(context);

}
