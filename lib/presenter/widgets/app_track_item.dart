import 'package:flutter/material.dart';
import 'package:spotify2/domain/entity/track_entity.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/styles.dart';

class AppTrackItem extends StatelessWidget {
  const AppTrackItem({
    super.key,
    required this.trackEntity,
    required this.onTap,
    this.spacing = 8,
  });
  final TrackEntity trackEntity;
  final VoidCallback onTap;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            trackEntity.url,
            height: 150,
            width: 150,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: spacing,
          ),
          Text(
            trackEntity.name,
            style: AppStyle.bodyMedium.copyWith(
              color: AppColors.white,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: spacing,
          ),
          Text(
            '${trackEntity.artist} songs',
            style: AppStyle.captionsSmall.copyWith(
              color: AppColors.white,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
