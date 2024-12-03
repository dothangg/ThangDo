import 'package:dartz/dartz.dart';
import 'package:thang/core/usecase/usecase.dart';
import 'package:thang/data/models/auth/signin_user_req.dart';
import 'package:thang/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SigninUserCase implements UseCase<Either,SigninUserReq> {

  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}