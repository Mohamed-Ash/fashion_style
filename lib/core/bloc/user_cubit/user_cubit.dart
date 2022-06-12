import 'package:bloc/bloc.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';
import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/core/data/repository/user_repository.dart';


class Usercubit extends Cubit<UserState> {
  final UserRepository userRepository;
  List<UserModel> users = [];
  
  Usercubit(this.userRepository) : super(UserInitialState());


  void getAllUserModel()async {
    emit(UserLoadingState());
    users = await userRepository.getProfileUserRepository();
    emit(UserLoadedState(users));
  }
}
