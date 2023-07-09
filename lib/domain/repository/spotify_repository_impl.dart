import 'package:spotify2/data/data_source/local/local_data_source.dart';
import 'package:spotify2/data/repository/spotify_repository.dart';
import 'package:spotify2/domain/entity/library_entity.dart';

class SpotifyRepositoryImpl extends SpotifyRepository {
  @override
  List<LibraryEntity> getLibraryList() {
    return LocalDataSource().getLibraryList();
  }
}
