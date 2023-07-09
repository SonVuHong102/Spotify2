import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify2/gen/assets.gen.dart';
import 'package:spotify2/presenter/base/base_stateless_page.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/dimen.dart';
import 'package:spotify2/presenter/base/styles.dart';
import 'package:spotify2/presenter/widgets/app_button.dart';
import 'package:spotify2/presenter/widgets/app_form_field.dart';

@RoutePage()
class LoginPage extends BaseStatelessPage {
  const LoginPage({super.key});

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                height32,
                Assets.images.logo.image(height: 40),
                height80,
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: AppStyle.titleLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                height16,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'If You Need Any Support ',
                        style: AppStyle.captionsSmall,
                      ),
                      TextSpan(
                        text: 'Click Here',
                        style: AppStyle.captionsSmall.copyWith(
                          color: AppColors.textGreen,
                        ),
                      ),
                    ],
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
                height16,
                const AppFormField(
                  hintText: 'Enter Username Or Email',
                ),
                height16,
                const AppFormField(
                  hintText: 'Password',
                  isPassword: true,
                ),
                height16,
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'Forgot password?',
                    style: AppStyle.captionsMedium.copyWith(
                      color: AppColors.white,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
                height16,
                AppButton(
                  text: 'Login',
                  onPressed: () {},
                ),
                height24,
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        height: 1,
                        color: AppColors.white40,
                      ),
                    ),
                    width16,
                    Text(
                      'Or',
                      style: AppStyle.captionsSmall.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    width24,
                    const Expanded(
                      child: Divider(
                        height: 1,
                        color: AppColors.white40,
                      ),
                    ),
                  ],
                ),
                height24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildIconButton(
                        Assets.icons.icFacebook.path,
                        () {},
                      ),
                    ),
                    width24,
                    Expanded(
                      child: _buildIconButton(
                        Assets.icons.icGoogle.path,
                        () {},
                      ),
                    ),
                    width24,
                    Expanded(
                      child: _buildIconButton(
                        Assets.icons.icApple.path,
                        () {},
                      ),
                    ),
                  ],
                ),
                height32,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '''Don't Have An Account? ''',
                        style: AppStyle.captionsSmall,
                      ),
                      TextSpan(
                        text: 'Register',
                        style: AppStyle.captionsSmall.copyWith(
                          color: AppColors.textYellow,
                        ),
                      ),
                    ],
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
                height48,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(
    String iconUrl,
    VoidCallback onPressed,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.white40,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 48,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Image.asset(iconUrl),
        ),
      ),
    );
  }
}
