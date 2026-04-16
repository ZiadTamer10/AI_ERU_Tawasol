import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> login({required String email, required String password}) async {
    final userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return userCredential.user;
  }
}
