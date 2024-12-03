import 'package:dartz/dartz.dart';
import 'package:thang/core/usecase/usecase.dart';
import 'package:thang/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class GetUserUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }


  }

