import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/common/presentation/providers/session_provider.dart';

class SelectAmountScreen extends ConsumerWidget {
  const SelectAmountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('SelectAmount Screen'),
            ElevatedButton(
                onPressed: () {
                  ref.read(sessionProvider.notifier).state.signOut();
                },
                child: const Text('Log out'))
          ],
        ),
      ),
    );
  }
}
