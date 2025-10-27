
import 'package:go_router/go_router.dart';
import 'package:navegacion2/core/router/app_routes.dart';
import 'package:navegacion2/features/card_responsiva_page/presentation/page/card_responsiva_page.dart';
import 'package:navegacion2/features/color_scheme_demo/presentation/page/color_scheme_page.dart';
import 'package:navegacion2/features/dashboard_estadisticas/presentation/page/dashboard_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes().responsivaPath,
  routes: [
    GoRoute(
        path: AppRoutes.responsivaPath,
        name: AppRoutes.responsiva,
        builder: (context, state) => const CardResponsivaPage()
    ),
    GoRoute(
        path: AppRoutes.estadisticaPath,
        name: AppRoutes.estadistica,
        builder: (context, state) => const DashboardPage()
    ),
    GoRoute(
        path: AppRoutes.homePath,
        name: AppRoutes.home,
        builder: (context, state) => const ColorSchemePage(),
        routes: [
          GoRoute(
              path: AppRoutes.profilePath,
              name: AppRoutes.profile,
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                return ProfileScreen(userId:id);
              }
          ),
        ]
    ),
  ],
);