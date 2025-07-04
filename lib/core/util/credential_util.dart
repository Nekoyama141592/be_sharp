import 'package:be_sharp/application/run_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CredentialUtil {
  static Future<OAuthCredential> appleCredential() async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    OAuthProvider oauthProvider = OAuthProvider('apple.com');
    final credential = oauthProvider.credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );
    return credential;
  }

  static Future<AuthCredential> googleCredential() async {
    final clientId = RunApp.getFirebaseOption().iosClientId;
    final GoogleSignIn signIn = GoogleSignIn.instance;
    await signIn.initialize(clientId: clientId);
    const List<String> scopes = <String>[
      'https://www.googleapis.com/auth/contacts.readonly',
    ];
    final googleUser = await GoogleSignIn.instance.authenticate();
    final authorization =
        await googleUser.authorizationClient.authorizationForScopes(scopes);
    final googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: authorization?.accessToken,
      idToken: googleAuth.idToken,
    );
    return credential;
  }
}
