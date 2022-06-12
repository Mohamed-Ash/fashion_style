import 'package:bloc/bloc.dart';
import 'package:fashion_style/user/cubit/user_state.dart';
import 'package:fashion_style/user/cubit/data/model/user_model.dart';
import 'package:fashion_style/user/cubit/data/repository/user_repository.dart';


class ApidatablocuserCubit extends Cubit<UserState> {
  final UserRepository userRepository;
  List<UserModel> users = [];
  
  ApidatablocuserCubit(this.userRepository) : super(UserInitialState());


  void getAllUserModel()async {
    emit(UserLoadingState());
    users = await userRepository.getAllUserRepository();
    emit(UserLoadedState(users));
  }
}
