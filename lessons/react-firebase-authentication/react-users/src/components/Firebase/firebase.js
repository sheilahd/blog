import app from "firebase/app";
import "firebase/auth";

const config = {
  apiKey: "AIzaSyCHFWkBGJ6tY282H16Lzq2_qTwk476ce48",
  authDomain: "first-firebase.firebaseapp.com",
  databaseURL: "https://first-firebase.firebaseio.com",
  projectId: "first-firebase-d291b",
  storageBucket: "first-firebase.appspot.com",
  messagingSenderId: "9999999",
};

class Firebase {
  constructor() {
    app.initializeApp(config);
    this.auth = app.auth();
  }
  doCreateUserWithEmailAndPassword = (email, password) =>
    this.auth.createUserWithEmailAndPassword(email, password);

  doSignInWithEmailAndPassword = (email, password) =>
    this.auth.signInWithEmailAndPassword(email, password);

  doSignOut = () => this.auth.signOut();

  doPasswordReset = (email) => this.auth.sendPasswordResetEmail(email);

  doPasswordUpdate = (password) =>
    this.auth.currentUser.updatePassword(password);
}

export default Firebase;
