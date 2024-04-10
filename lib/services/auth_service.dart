import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google sign in
  signInWithGoogle() async {
// begin interactive sign in process
    final GoogleSignInAccount? guser = await GoogleSignIn().signIn();

//obtain auth details
    final GoogleSignInAuthentication gAuth = await guser!.authentication;

//create new credentail to user
    

//finally , lets sign in
  }
}
