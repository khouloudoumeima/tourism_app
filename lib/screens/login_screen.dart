import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tourism_app/screens/questionnaire.dart';
import 'package:tourism_app/screens/home_screen.dart';
import 'package:tourism_app/screens/password%20forgot.dart';
import 'package:tourism_app/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg-img.JPG"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 80.0,
                  left: 80.0,
                ),
                child: Text(
                  "Welcome again!",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 250.0,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      //EMAIL FIELD
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          label: const Text(
                            "E-mail",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xff0D47A1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      //PASSWORD TEXTFIELD
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xff0D47A1,
                              ),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      //FORGET PASSWORD
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            decorationThickness: 2.0,
                            decorationColor: Color(
                              0xff0D47A1,
                            ),
                            decorationStyle: TextDecorationStyle.solid,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Color(
                              0xff0D47A1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      //SIGN IN BUTTON
                      Container(
                        height: 55.0,
                        width: 320.0,
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff021024,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _userLogin();
                          },
                          child: const Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70.0,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account ?",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (e) => const SignupScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "SIGN UP HERE!",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2.0,
                                  decorationColor: Color(
                                    0xff0D47A1,
                                  ),
                                  decorationStyle: TextDecorationStyle.solid,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(
                                    0xff0D47A1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _userLogin() async {
    String email = _emailController.text, password = _passwordController.text;
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (e) => QuestionnaireApp(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No user found!",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18.0,
              ),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong password!",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18.0,
              ),
            ),
          ),
        );
      }
    }
  }
}
