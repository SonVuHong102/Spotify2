import 'package:spotify2/domain/entity/track_entity.dart';

abstract class SpotifyRepository {
  List<TrackEntity> getLibraryList();
}
