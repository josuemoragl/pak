import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_routes.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class BirthDateScreen extends ConsumerWidget {
  const BirthDateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('BirthDate Screen'),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(routerProvider)
                      .push('/auth/register/add-phone-number');
                },
                child: const Text('Log out'))
          ],
        ),
      ),
    );
  }
}
