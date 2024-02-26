import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/common/presentation/providers/session_provider.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
                onPressed: () {
                  ref.read(routerProvider).go('/session/profile');
                },
                child: const Text('Go to Profile'))
          ],
        ),
      ),
    );
  }
}
