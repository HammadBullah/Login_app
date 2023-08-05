
class SignInWithEmailAndPasswordFailure{
  final String message;

  SignInWithEmailAndPasswordFailure([this.message = "An Unknown error occurred."]);

  factory SignInWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'invalid-email' : return SignInWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'user-disabled' : return SignInWithEmailAndPasswordFailure('This user has been disabled. Please contact support for help.');
      case 'user-not-found' : return SignInWithEmailAndPasswordFailure('No account corresponding to that email.');
      case 'wrong-password' : return SignInWithEmailAndPasswordFailure('Password entered is incorrect.');
      default: return SignInWithEmailAndPasswordFailure();
    }
  }
}