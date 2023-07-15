import 'package:auto_route/auto_route.dart';
import 'package:spotify2/presenter/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: SplashRoute.page),
        AutoRoute(page: StartRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(path: '', page: LibraryRoute.page),
            AutoRoute(path: 'history', page: HistoryRoute.page),
          ],
        ),
      ];
}
