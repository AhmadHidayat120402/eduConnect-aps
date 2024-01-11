import 'dart:convert';
import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isRegistering = false;

  Future<void> register() async {
    setState(() {
      isRegistering = true;
    });

    try {
      final response = await http.post(
        Uri.parse(
            'https://5726-103-109-205-16.ngrok-free.app/eduConnect_backend/public/api/register'),
        body: {
          'name': fullNameController.text,
          'email': emailController.text,
          'username': usernameController.text,
          'password': passwordController.text,
          'confirm_password': confirmPasswordController.text,
        },
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200 &&
          data['success'] == 'Registration Successful') {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setInt('user_id', data['id']);
        prefs.setString('user_name', data['name']);
        prefs.setString('user_email', data['email']);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration Successful'),
            duration: Duration(seconds: 2),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration Success'),
            duration: Duration(seconds: 2),
          ),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    } catch (e) {
      print('Error during registration: $e');
    } finally {
      setState(() {
        isRegistering = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Text(
              "Create an account",
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  "Register",
                  style: bgTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "to get started with the app",
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: fullNameController,
                style: whiteTextStyle.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.person_rounded,
                    color: bgcolor,
                  ),
                  labelText: 'Your full name',
                  labelStyle: whiteTextStyle.copyWith(
                    fontSize: 14,
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: bgcolor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: emailController,
                style: whiteTextStyle.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.email,
                    color: bgcolor,
                  ),
                  labelText: 'Your Email',
                  labelStyle: whiteTextStyle.copyWith(fontSize: 14),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: bgcolor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: usernameController,
                style: whiteTextStyle.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.person_2_rounded,
                    color: bgcolor,
                  ),
                  labelText: 'Your username',
                  labelStyle: whiteTextStyle.copyWith(fontSize: 14),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: bgcolor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: passwordController,
                style: whiteTextStyle.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: bgcolor,
                  ),
                  labelText: 'Your Password',
                  labelStyle: whiteTextStyle.copyWith(fontSize: 14),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: bgcolor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: confirmPasswordController,
                style: whiteTextStyle.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: bgcolor,
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: whiteTextStyle.copyWith(fontSize: 14),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: bgcolor),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 200,
            ),
            InkWell(
              onTap: () {
                register();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: bgcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.center,
                    child: isRegistering
                        ? const CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                        : Text(
                            "REGISTER",
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I don't have an account",
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: bgTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
