import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get streamAuthStatus => auth.authStateChanges();
}
