import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/login/ui/screens/login_screen.dart';
import 'package:docdoc/features/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
  routes: [
    GoRoute(path: Routes.onBoarding, builder: (_, __) =>const OnboardingScreen()),
    GoRoute(path: Routes.loginScreen, builder: (_, __) => const LoginScreen()),
  ],
);

}