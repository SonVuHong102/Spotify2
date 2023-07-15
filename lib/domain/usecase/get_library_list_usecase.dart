import 'package:spotify2/domain/base/base_usecase.dart';
import 'package:spotify2/domain/entity/track_entity.dart';
import 'package:spotify2/domain/repository/spotify_repository_impl.dart';

class GetLibraryListUseCase extends BaseUseCase<List<TrackEntity>> {
  @override
  List<TrackEntity> execute() {
    return SpotifyRepositoryImpl().getLibraryList();
  }
}
