import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Session with ChangeNotifier {
  bool isLoggedIn = false;

  void signIn() {
    isLoggedIn = true;
    notifyListeners();
  }

  void signOut() {
    isLoggedIn = false;
    notifyListeners();
  }
}

final sessionProvider = StateProvider<Session>((ref) => Session());
