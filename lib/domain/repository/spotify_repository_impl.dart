import 'package:spotify2/data/data_source/local/local_data_source.dart';
import 'package:spotify2/data/repository/spotify_repository.dart';
import 'package:spotify2/domain/entity/track_entity.dart';

class SpotifyRepositoryImpl extends SpotifyRepository {
  @override
  List<TrackEntity> getLibraryList() {
    return LocalDataSource().getLibraryList();
  }
}
