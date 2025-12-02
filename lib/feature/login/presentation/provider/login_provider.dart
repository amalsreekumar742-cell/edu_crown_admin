import 'package:admin/feature/login/repo/login_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminProvider extends ChangeNotifier {
final LoginRepoImpl _adminRepository = LoginRepoImpl();

  bool _loading = false;
  String? _error;

  bool get loading => _loading;
  String? get error => _error;
   final firebaseAuth =FirebaseAuth.instance;
   User? get loggedUser  => firebaseAuth.currentUser;
   bool get loggedIn  => loggedUser != null;

   

Future<bool> login(String email, String password,{required  VoidCallback onSuccess}) async {
    _loading = true;
    _error = null;
    notifyListeners();

    final result =
        await _adminRepository.loginAdmin(email, password);

    _loading = false;

    return result.fold(
      (failure) {
        _error = failure.errMsg;
        notifyListeners();
        return false;
      },
      (_) {
        onSuccess.call();

        notifyListeners();
        return true;
      },
    );
  }
}
