import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(80, 51, 255, 1),
        centerTitle: true,
        title: const Text(
          "إنشاء الحساب",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "IBM_Plex_Sans_Arabic",
          ),
        ),
      ),

      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "يجب ملء الفراغ";
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "IBM_Plex_Sans_Arabic",
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(
    color: Colors.red,
    width: 2,
  ),
),

errorStyle: TextStyle(
  color: Colors.red,
),
                labelText: "الاسم",
                prefixIcon: Icon(Icons.person),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
                            validator: (value) {
                if(value == null || value.isEmpty){
                  return "يجب ملء الفراغ";
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "IBM_Plex_Sans_Arabic",
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(
    color: Colors.red,
    width: 2,
  ),
),

errorStyle: TextStyle(
  color: Colors.red,
),
                labelText: "البريد الالكتروني",
                prefixIcon: Icon(Icons.email),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
                            validator: (value) {
                if(value == null || value.isEmpty){
                  return "يجب ملء الفراغ";
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "IBM_Plex_Sans_Arabic",
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(
    color: Colors.red,
    width: 2,
  ),
),

errorStyle: TextStyle(
  color: Colors.red,
),
                labelText: "كلمة المرور",
                prefixIcon: Icon(Icons.lock),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
                            validator: (value) {
                if(value == null || value.isEmpty){
                  return "يجب ملء الفراغ";
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "IBM_Plex_Sans_Arabic",
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(
    color: Colors.red,
    width: 2,
  ),
),

errorStyle: TextStyle(
  color: Colors.red,
),
                labelText: "اعادة كلمة المرور",
                prefixIcon: Icon(Icons.lock),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
  onPressed: () {
    if (formKey.currentState!.validate()){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 88, 77, 151),
    minimumSize: const Size(220, 55),
  ),
  child: const Text(
    "إنشاء حساب",
    style: TextStyle(
      color: Colors.white,
    ),
    ),

),
            SizedBox(height: 1),
            TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  },
  child: const Text(
    "لديك حساب؟تسجيل الدخول",
    style: TextStyle(
      color: Colors.black,
      fontFamily: "IBM_Plex_Sans_Arabic",
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}