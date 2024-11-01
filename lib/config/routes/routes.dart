import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  // Add your navigator observers
  observers: [AppNavigatorObserver()],
  navigatorKey: NavigationService.navigatorKey, // Set the navigatorKey
  errorBuilder: (context, state) => ErrorPage(state.error.toString()),
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) => fadeTransitionPage(context, state, const HomePage()),
      redirect: (context, state) {
        return null;
      },
      // routes: <RouteBase>[
      //   // Add child routes
      // ],
    ),
  ],
);
