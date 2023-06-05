import 'package:flutter/material.dart';
import 'package:online_store/sign_in_sign_up_screens/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: 'User Name'),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: 'Password'),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                //Navigate to SignInScreen

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()),
                                );
                              },
                              child: Text(
                                'Sign In',
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
