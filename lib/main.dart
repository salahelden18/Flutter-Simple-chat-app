import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:udemy_chat_app/screens/chat_screen.dart';
import 'package:udemy_chat_app/screens/registeration.dart';
import 'package:udemy_chat_app/screens/signin_screen.dart';
import 'package:udemy_chat_app/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const WelcomeScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.routeName
          : WelcomeScreen.routeName,
      routes: {
        WelcomeScreen.routeName: (ctx) => const WelcomeScreen(),
        SignInScreen.routeName: (ctx) => const SignInScreen(),
        RegisterationScreen.routeName: (ctx) => const RegisterationScreen(),
        ChatScreen.routeName: (ctx) => const ChatScreen()
      },
    );
  }
}
