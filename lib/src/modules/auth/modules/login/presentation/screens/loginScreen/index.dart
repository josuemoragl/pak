import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/common/presentation/providers/session_provider.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_routes.dart';
import 'package:pako_wallet/src/modules/auth/navigation/auth_routes.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Login Screen'),
            ElevatedButton(
                onPressed: () {
                  ref.read(routerProvider).go('/auth/register');
                },
                child: const Text('Register')),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(routerProvider)
                      .pushNamed(AuthRoutes.forgotPasswordModule.path);
                },
                child: const Text('Forgot password?')),
            ElevatedButton(
                onPressed: () {
                  ref.read(sessionProvider.notifier).state.signIn();
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
