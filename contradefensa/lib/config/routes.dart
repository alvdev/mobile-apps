import 'package:go_router/go_router.dart';
import 'package:contradefensa/features/home/presentation/home_page.dart';
import 'package:contradefensa/features/login/presentation/login_page.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    )
  ],
);
