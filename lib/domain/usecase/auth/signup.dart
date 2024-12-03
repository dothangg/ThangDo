import 'package:dartz/dartz.dart';
import 'package:thang/core/usecase/usecase.dart';
import 'package:thang/data/models/auth/create_user_req.dart';
import 'package:thang/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {

  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}