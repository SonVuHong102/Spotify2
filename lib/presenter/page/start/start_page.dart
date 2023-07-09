import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify2/gen/assets.gen.dart';
import 'package:spotify2/presenter/base/base_page.dart';
import 'package:spotify2/presenter/base/colors.dart';
import 'package:spotify2/presenter/base/dimen.dart';
import 'package:spotify2/presenter/base/styles.dart';
import 'package:spotify2/presenter/router/router.gr.dart';
import 'package:spotify2/presenter/widgets/app_button.dart';

@RoutePage()
class StartPage extends BasePage {
  const StartPage({super.key});

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            height32,
            Assets.images.logo.image(height: 40),
            const Spacer(),
            Text(
              'Music for everyone',
              textAlign: TextAlign.center,
              style: AppStyle.titleLarge.copyWith(
                color: AppColors.main,
              ),
            ),
            height8,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum.',
                textAlign: TextAlign.center,
                style: AppStyle.bodySmall,
              ),
            ),
            height32,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: AppButton(
                text: 'Get Started',
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
              ),
            ),
            height48,
          ],
        ),
      ),
    );
  }
}
