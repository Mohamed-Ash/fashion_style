import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_admin_state.dart';

class BlocAdminCubit extends Cubit<BlocAdminState> {
  BlocAdminCubit() : super(BlocAdminInitial());
}
