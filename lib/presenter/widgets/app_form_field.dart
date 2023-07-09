import 'package:flutter/material.dart';
import 'package:spotify2/gen/assets.gen.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/styles.dart';

class AppFormField extends StatefulWidget {
  const AppFormField({
    super.key,
    this.controller,
    this.hintText,
    this.isPassword = false,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool isPassword;

  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
  var isVisible = false;

  @override
  void initState() {
    super.initState();
    isVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(
        color: AppColors.white40,
        width: 1,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppStyle.captionsMedium.copyWith(
          color: AppColors.white40,
        ),
        contentPadding: const EdgeInsets.fromLTRB(24, 26, 24, 26),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        errorBorder: border,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Assets.icons.icCrossEye.image(
                  height: 25,
                  width: 25,
                ),
                onPressed: () {
                  setState(() => isVisible = !isVisible);
                },
              )
            : null,
      ),
      style: AppStyle.captionsMedium.copyWith(
        color: AppColors.white,
      ),
      keyboardType: widget.isPassword
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      obscureText: !isVisible,
    );
  }
}
