import 'package:bloc/bloc.dart';
import 'package:fashion_style/core/bloc/user_cubit/user_state.dart';
import 'package:fashion_style/core/data/model/user_model.dart';
import 'package:fashion_style/core/data/repository/user_repository.dart';


class Usercubit extends Cubit<UserState> {

  final UserRepository userRepository;

  late UserModel user;
  
  Usercubit(this.userRepository) : super(UserInitialState());


  void getUserProfile({
    required String id,
  })async {
    emit(UserLoadingState());
    user = await userRepository.getUserProfile(id: id);
    emit(UserProfileLoadedState(user));
  }
}
