import 'package:bloc/bloc.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';
import 'package:signin_register_form/ui/home_screen/home_screen.dart';


class AppCubit extends Cubit<CubitStates>{
  AppCubit( ) : super(InitialState()){
    emit(HomeState());
  }
  goLogInScreen(){
    emit(LogInState());
  }
  goHomeScreen(){
    emit(HomeState());
  }
  goSearchScreen(){
    emit(SearchState());
  }
  goSingleItemScreen(){
    emit(ItemState());
  }


}