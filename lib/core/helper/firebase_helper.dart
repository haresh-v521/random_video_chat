import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:video_call/core/routes/go_routes.dart';
import 'package:video_call/core/helper/widgets/loading_alert_dialog.dart';

class FirebaseHelper {
  FirebaseHelper._();

  static FirebaseHelper firebaseHelper = FirebaseHelper._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// handle google login
  handleGoogleBtnClick({required BuildContext context}) {
    LoadingAlertDialog.loaderDialog(context: context);
    signInWithGoogle(context: context).then(
      (user) async {
        Navigator.pop(context);
        context.go(AppRoutes.bottomBar);
      },
    );
  }

  /// google sign in
  Future<UserCredential?> signInWithGoogle(
      {required BuildContext context}) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      print(error);
    }
    return null;
  }
}
