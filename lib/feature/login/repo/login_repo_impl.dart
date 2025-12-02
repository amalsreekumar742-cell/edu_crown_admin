import 'package:admin/general/core/failures/main_failure.dart';
import 'package:admin/general/core/type_def.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';


@lazySingleton
class LoginRepoImpl  {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 


  FutureResult<void> loginAdmin(String email, String password ) async {
    try {
      // 🔹 Firebase Login
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      final String? uid = userCredential.user?.uid;

      if (uid == null) {
        return left(MainFailure.generalFailure(errMsg: "User not found"));
      }

      
      // final DocumentSnapshot adminDoc =
      //     await _firestore.collection("admins").doc(uid).get();

      // if (!adminDoc.exists) {
      //   return left(MainFailure.generalFailure(
      //       errMsg: "Access denied. Not an admin user."));
      // }

      // 🔹 SUCCESS
      return right(null);
    }

    // Firebase Auth related errors
    on FirebaseAuthException catch (e) {
      return left(
        MainFailure.generalFailure(
          errMsg: e.toString(),
        ),
      );
    }

    // Any other unknown error
    catch (e) {
      return left(
        MainFailure.generalFailure(errMsg: e.toString()),
      );
    }
  }

}