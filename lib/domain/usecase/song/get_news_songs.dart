import 'package:dartz/dartz.dart';
import 'package:thang/core/usecase/usecase.dart';
import 'package:thang/domain/repository/song/song.dart';

import '../../../service_locator.dart';

class GetNewsSongsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getNewsSongs();
  }


}