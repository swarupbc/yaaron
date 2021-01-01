import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yaaron/screens/welcome_screen.dart';
import 'package:yaaron/screens/signin_screen.dart';
import 'package:yaaron/screens/signup_screen.dart';
import 'package:yaaron/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaaron',
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SigninScreen.id: (context) => SigninScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
