import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/routes.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  )
]);
