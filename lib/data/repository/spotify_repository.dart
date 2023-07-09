import 'package:spotify2/domain/entity/library_entity.dart';

abstract class SpotifyRepository {
  List<LibraryEntity> getLibraryList();
}
