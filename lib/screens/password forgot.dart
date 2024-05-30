import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tourism_app/auth/firebase_auth.dart';
import 'package:tourism_app/screens/questionnaire.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Password reset link sent! Check your email'),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Masquer la barre d'applications
        child: Container(), // Barre d'applications vide
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Enter your email address to reset your password.',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16.0),
            ),
            SizedBox(height: 30.0),
            TextFormField(
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
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez entrer votre adresse e-mail';
                }
                return null;
              },
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour réinitialiser le mot de passe
                // Par exemple, envoyez un e-mail de réinitialisation de mot de passe
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical:
                        10.0), // Padding vertical pour rendre le bouton plus petit
                child: Text(
                  'Envoyer',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight:
                          FontWeight.bold), // Taille de police plus petite
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 13, 26, 70), // Couleur bleue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Bordure arrondie
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
