import 'package:google_sign_in/google_sign_in.dart';
import "package:firebase_auth/firebase_auth.dart";

class AuthService {
  // Google sign in
  signInWithGoogle() async {
// begin interactive sign in process
    final GoogleSignInAccount? guser = await GoogleSignIn().signIn();

//obtain auth details
    final GoogleSignInAuthentication gAuth = await guser!.authentication;

//create new credentail to user

    final credential = GoogleAuthProvider
        .credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);

//finally , lets sign in
return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
