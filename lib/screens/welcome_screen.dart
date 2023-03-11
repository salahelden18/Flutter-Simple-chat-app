import 'package:flutter/material.dart';
import 'package:udemy_chat_app/screens/registeration.dart';
import 'package:udemy_chat_app/screens/signin_screen.dart';
import 'package:udemy_chat_app/widgets/my_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const routeName = '/welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/logo.png'),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2e386b),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            MyButton(
                color: Colors.yellow[900],
                onPressed: () {
                  Navigator.of(context).pushNamed(SignInScreen.routeName);
                },
                title: 'Sign in'),
            MyButton(
                color: Colors.blue[900],
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RegisterationScreen.routeName);
                },
                title: 'Register'),
          ],
        ),
      ),
    );
  }
}
