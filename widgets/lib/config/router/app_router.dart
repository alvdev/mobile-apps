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
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    )
  ],
);
