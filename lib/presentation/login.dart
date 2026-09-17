import 'package:flutter/material.dart';
import 'home_page.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(80, 51, 255, 1),
        centerTitle: true,
        title: const Text(
          "تسجيل الدخول",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "IBM_Plex_Sans_Arabic",
          ),
        ),
      ),

      body: Form(
        key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              TextFormField(
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "يجب ملء البريد الإلكتروني";
    }
    return null;
  },
  decoration: InputDecoration(
                labelText: "البريد الإلكتروني",
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              validator: (value) {
  if (value == null || value.isEmpty) {
    return "يجب ملء كلمة المرور";
  }
  return null;
},
              obscureText: true,
              decoration: InputDecoration(
                labelText: "كلمة المرور",
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 15),
            ElevatedButton(
  onPressed: () {
    if (formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromRGBO(80, 51, 255, 1),
    minimumSize: const Size(220, 55),
  ),
  child: const Text(
    "تسجيل الدخول",
    style: TextStyle(color: Colors.white),
  ),
),
            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              },
              child: const Text(
                "ليس لديك حساب؟ تسجيل",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "IBM_Plex_Sans_Arabic",
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}