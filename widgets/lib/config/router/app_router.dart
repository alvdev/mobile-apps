import 'package:go_router/go_router.dart';
import 'package:widgets/presentation/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: SettingsScreen.name,
      path: '/settingss',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      name: CategoriesScreen.name,
      path: '/categories',
      builder: (context, state) => const CategoriesScreen(),
    )
  ],
);
