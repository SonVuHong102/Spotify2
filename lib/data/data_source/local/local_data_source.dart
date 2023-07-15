import 'package:spotify2/domain/entity/track_entity.dart';
import 'package:spotify2/gen/assets.gen.dart';

class LocalDataSource {
  List<TrackEntity> getLibraryList() {
    return List.generate(
      11,
      (index) => TrackEntity(
        url: Assets.images.image2.path,
        name: 'Liked songs',
        artist: '128',
      ),
    );
  }
}
