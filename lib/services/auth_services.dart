part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SingInSignUpResult> signUp(
      String email,
      String password,
      String name,
      List<String> selectedGenders,
      String selectedLanguage) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = result.user.convertToUser(
        name: name,
        selectedGenres: selectedGenders,
        selectedLanguage: selectedLanguage,
      );

      await UserServices.updateUser(user);
      return SingInSignUpResult(user: user);
    } catch (error) {
      return SingInSignUpResult(message: error.toString().split(',')[1].trim());
    }
  }

  static Future<SingInSignUpResult> signIn(
      String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User user = await result.user.fromFireStore();

      return SingInSignUpResult(user: user);
    } catch (error) {
      return SingInSignUpResult(message: error.toString().split(',')[1].trim());
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<FirebaseUser> get userStream => _auth.onAuthStateChanged;
}

class SingInSignUpResult {
  User user;
  String message;

  SingInSignUpResult({this.user, this.message});
}
