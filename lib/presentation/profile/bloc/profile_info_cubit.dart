import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thang/domain/usecase/auth/get_user.dart';
import 'package:thang/presentation/profile/bloc/profile_info_state.dart';

import '../../../service_locator.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {
  ProfileInfoCubit() : super (ProfileInfoLoading());

  Future<void> getUser() async {

    var user = await sl<GetUserUseCase>().call();

    user.fold(
        (l) {
          emit(
            ProfileInfoFailure()
          );
        },
        (userEntity) {
          emit(
            ProfileInfoLoaded(userEntity: userEntity)
          );
        }
    );
  }
}