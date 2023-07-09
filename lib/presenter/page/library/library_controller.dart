import 'package:spotify2/domain/usecase/get_library_list_usecase.dart';
import 'package:spotify2/presenter/page/library/library_state.dart';
import 'package:state_notifier/state_notifier.dart';

class LibraryController extends StateNotifier<LibraryState> {
  LibraryController(super.state);

  loadData() {
    state = LibraryState(libraryList: GetLibraryListUseCase().execute());
  }
}
