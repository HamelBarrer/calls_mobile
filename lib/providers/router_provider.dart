import 'package:calls_mobile/providers/auth_provider.dart';
import 'package:calls_mobile/screens/app/root_screen.dart';
import 'package:calls_mobile/screens/auth/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = StateProvider((ref) {
  return GoRouter(
    initialLocation: '/auth/login',
    redirect: (context, state) async {
      final userAuth = await ref.watch(authenticatedUserProvider);

      if (userAuth != null) {
        return '/app/home';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/auth/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/app/home',
        name: 'home',
        builder: (context, state) => const RootScreen(),
      ),
    ],
  );
});
