import 'package:flutter/material.dart';
import 'package:spotify2/domain/entity/track_entity.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/dimen.dart';
import 'package:spotify2/presenter/base/styles.dart';

class AppTrackRow extends StatelessWidget {
  const AppTrackRow({
    super.key,
    required this.trackEntity,
    this.leadingSize = 64,
  });
  final TrackEntity trackEntity;
  final double leadingSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 80,
          child: Image.asset(
            trackEntity.url,
            height: leadingSize,
            width: leadingSize,
            alignment: Alignment.topRight,
            fit: BoxFit.scaleDown,
          ),
        ),
        width16,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                trackEntity.name,
                style: AppStyle.bodyMedium.copyWith(
                  color: AppColors.white,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                trackEntity.artist,
                style: AppStyle.captionsSmall.copyWith(
                  color: AppColors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const Icon(
          Icons.menu,
          size: 16,
          color: AppColors.white,
        )
      ],
    );
  }
}
