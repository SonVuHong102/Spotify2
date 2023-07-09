import 'package:spotify2/domain/entity/library_entity.dart';

class LibraryState {
  LibraryState({
    required this.libraryList,
  });

  final List<LibraryEntity> libraryList;

  LibraryState copyWith({
    List<LibraryEntity>? libraryList,
  }) {
    return LibraryState(
      libraryList: libraryList ?? this.libraryList,
    );
  }
}
