class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An unknown error occurred"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak password':
        return const SignUpWithEmailAndPasswordFailure(
            'Please enter a Stronger Password');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Email is not Valid');
      case 'email-already-exist':
        return const SignUpWithEmailAndPasswordFailure(
            'An account already exists with this email');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
