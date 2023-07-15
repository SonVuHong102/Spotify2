import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify2/domain/usecase/get_library_list_usecase.dart';
import 'package:spotify2/presenter/base/base_stateless_page.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/widgets/app_track_item.dart';

@RoutePage()
class LibraryPage extends BaseStatelessPage {
  const LibraryPage({super.key});

  @override
  Widget builder(BuildContext context) {
    final libraryList = GetLibraryListUseCase().execute();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.fromLTRB(40, 16, 40, 40),
          crossAxisCount: 2,
          childAspectRatio: 0.728,
          children: libraryList
                  .map(
                    (e) => AppTrackItem(
                      trackEntity: e,
                      onTap: () {},
                    ),
                  )
                  .toList() ??
              [],
        ),
      ),
    );
  }
}
