import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pako_wallet/src/modules/auth/modules/register/navigation/register_routes.dart';
import 'package:pako_wallet/src/navigation/main_router.dart';

class ProfileMainScreen extends ConsumerWidget {
  const ProfileMainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('ProfileMain Screen'),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(routerProvider)
                      .push('/session/profile/personal-data');
                },
                child: const Text('Go to Personal Data screen'))
          ],
        ),
      ),
    );
  }
}
