import 'package:bloc/bloc.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';

class AppCubit extends Cubit<CubitStates>{
  AppCubit( ) : super(InitialState()){
    emit(SearchState());
  }
  goLogInScreen(){
    emit(LogInState());
  }
  goHomeScreen(){
    emit(HomeState());
  }

}