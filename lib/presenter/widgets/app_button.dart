import 'package:flutter/material.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll<Color>(
            AppColors.mainGreen,
          ),
        ),
        child: Text(
          text,
          style: AppStyle.titleMedium.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
