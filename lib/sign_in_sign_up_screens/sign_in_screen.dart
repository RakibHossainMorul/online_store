import 'package:flutter/material.dart';
import 'package:online_store/feed_screen/home_screen.dart';
import 'package:online_store/sign_in_sign_up_screens/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                //  / ` height: 300,
                width: double.infinity,
                color: Colors.indigo,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email), hintText: 'Email'),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: 'Password'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text('Sign In')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
