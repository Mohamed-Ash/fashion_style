import 'package:bloc/bloc.dart';
import 'package:fashion_style/user/cubit/api_data_bloc_user_state.dart';


class ApidatablocuserCubit extends Cubit<ApidatablocuserState> {
  ApidatablocuserCubit() : super(ApidatablocuserInitial());
}
