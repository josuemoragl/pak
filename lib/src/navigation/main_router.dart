import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pako_wallet/src/common/presentation/providers/session_provider.dart';
import 'package:pako_wallet/src/modules/auth/navigation/auth_router.dart';
import 'package:pako_wallet/src/modules/session/navigation/session_router.dart';

final _key = GlobalKey<NavigatorState>();

enum AppRoute { splash, login, home }

final routerProvider = Provider<GoRouter>((ref) {
  final sessionState = ref.watch(sessionProvider);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    //initialLocation: '/',
    refreshListenable: sessionState,
    routes: [authNavigationStack, sessionNavigationStack],
    redirect: (context, state) {
      final isAuthenticated = sessionState.isLoggedIn;

      final fullPath = state.fullPath ?? '';

      if (fullPath == "") {
        return isAuthenticated ? '/session' : '/auth';
      }

      if (fullPath == "/auth") {
        return isAuthenticated ? '/session' : '/auth';
      }

      if (!isAuthenticated && fullPath.contains('/session')) {
        return '/auth';
      }
    },
  );
});
