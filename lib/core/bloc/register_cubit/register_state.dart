part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {

}

class RegisterLoadedState extends RegisterState {
  final List<AuthRegisterModel> registerModel;

  RegisterLoadedState(this.registerModel);

}
class RegisterLoadingState extends RegisterState {

}