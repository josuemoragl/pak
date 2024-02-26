import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/modules/auth/navigation/auth_routes.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class CreatePasswordScreen extends ConsumerWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('CreatePassword Screen'),
            ElevatedButton(
                onPressed: () {
                  ref.read(routerProvider).go('/auth');
                },
                child: const Text('Log out'))
          ],
        ),
      ),
    );
  }
}
