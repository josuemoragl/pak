import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_routes.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class IdentificationDataScreen extends ConsumerWidget {
  const IdentificationDataScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('IdentificationData Screen'),
            ElevatedButton(
                onPressed: () {
                  ref.read(routerProvider).push('/auth/register/add-birthdate');
                },
                child: const Text('Log out'))
          ],
        ),
      ),
    );
  }
}
