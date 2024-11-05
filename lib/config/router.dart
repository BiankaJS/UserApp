import 'package:go_router/go_router.dart';
import '../presentation/screens/Info/info_screen.dart';
import '../presentation/screens/Profile/profile_screen.dart';
import '../presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomeScreen();
      }),
  GoRoute(
      path: "/profile",
      builder: (context, state) {
        return const ProfileScreen();
      }),
  GoRoute(
      path: "/info/:name/:age/:ocupation",
      builder: (context, state) {
        final name = state.pathParameters["name"] ?? '';
        final age = int.parse(state.pathParameters["age"] ?? '0');
        final ocupation = state.pathParameters["ocupation"] ?? '';
        return InfoScreen(name: name, age: age, occupation: ocupation);
      })
]);
