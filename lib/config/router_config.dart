import 'package:go_router/go_router.dart';
import 'package:personal_finance/ui/all_routes.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/signup',
    name: SignUpScreen.name,
    builder: (context, state) => const SignUpScreen(),
  ),
  ShellRoute(
      builder: (context, state, child) => HomeLayout(childView: child),
      routes: [
        GoRoute(
          path: '/home',
          name: HomeLayout.name,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: '/history',
          name: HistoryView.name,
          builder: (context, state) => const HistoryView(),
        ),
        GoRoute(
            path: '/categories',
            name: CategoriesView.name,
            builder: (context, state) => const CategoriesView()),
        GoRoute(
            path: '/budget',
            name: BudgetView.name,
            builder: (context, state) => const BudgetView()),
      ])
]);
