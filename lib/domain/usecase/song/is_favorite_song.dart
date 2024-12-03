import 'package:thang/core/usecase/usecase.dart';
import 'package:thang/domain/repository/song/song.dart';

import '../../../service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool,String> {

  @override
  Future<bool> call({String ? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }

}