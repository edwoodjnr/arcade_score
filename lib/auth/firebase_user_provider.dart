import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ArcadeScoreFirebaseUser {
  ArcadeScoreFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ArcadeScoreFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ArcadeScoreFirebaseUser> arcadeScoreFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ArcadeScoreFirebaseUser>(
      (user) {
        currentUser = ArcadeScoreFirebaseUser(user);
        return currentUser!;
      },
    );
