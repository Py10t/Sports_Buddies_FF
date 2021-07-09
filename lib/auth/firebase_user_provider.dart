import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SportsBuddiesFirebaseUser {
  SportsBuddiesFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SportsBuddiesFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SportsBuddiesFirebaseUser> sportsBuddiesFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SportsBuddiesFirebaseUser>(
            (user) => currentUser = SportsBuddiesFirebaseUser(user));
