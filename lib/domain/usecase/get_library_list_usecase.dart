import 'package:spotify2/domain/base/base_usecase.dart';
import 'package:spotify2/domain/entity/library_entity.dart';
import 'package:spotify2/domain/repository/spotify_repository_impl.dart';

class GetLibraryListUseCase extends BaseUseCase<List<LibraryEntity>> {
  @override
  List<LibraryEntity> execute() {
    return SpotifyRepositoryImpl().getLibraryList();
  }
}
