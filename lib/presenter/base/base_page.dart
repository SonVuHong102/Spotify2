import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify2/presenter/base/keyboard.dart';

abstract class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () {
          hideKeyboard();
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: builder(context),
      ),
    );
  }

  Widget builder(BuildContext context);
}
