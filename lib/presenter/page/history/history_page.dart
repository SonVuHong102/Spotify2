import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify2/domain/usecase/get_library_list_usecase.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/dimen.dart';
import 'package:spotify2/presenter/base/styles.dart';
import 'package:spotify2/presenter/widgets/app_track_row.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              _buildSection(context, 'Today'),
              height32,
              _buildSection(context, 'Yesterday'),
              height32,
              _buildSection(context, 'Yesterday of Yesterday'),
              height16,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title) {
    final libraryList = GetLibraryListUseCase().execute();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppStyle.titleMedium,
                textAlign: TextAlign.start,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.white,
            )
          ],
        ),
        height16,
        AppTrackRow(
          trackEntity: libraryList[0],
          leadingSize: 80,
        ),
        height16,
        AppTrackRow(
          trackEntity: libraryList[1],
        ),
        height16,
        AppTrackRow(
          trackEntity: libraryList[2],
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            top: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'See all 28 played',
                  style: AppStyle.captionsMedium,
                ),
              ),
              Icon(
                Icons.menu,
                size: 16,
                color: AppColors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
