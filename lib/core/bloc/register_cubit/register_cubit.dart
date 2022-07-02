// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fashion_style/core/data/model/auth_register_model.dart';
import 'package:fashion_style/core/data/repository/auth_register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthRegisterRepository authRegisterRepository;
  
  List<AuthRegisterModel> authRegisterModel= [];

  RegisterCubit(
    this.authRegisterRepository,
  ) : super(RegisterInitial());

  void postRegister()async{
    emit(RegisterLoadingState());
    authRegisterModel = await authRegisterRepository.postAuthRepistory();
    emit(RegisterLoadingState());
  }
}