import 'dart:convert';
import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/bottom_navigation.dart';
import 'package:educonnect/ui/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> login() async {
    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(
            'https://5726-103-109-205-16.ngrok-free.app/eduConnect_backend/public/api/login'),
        body: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['success'] == 'Login Successfully') {
          // Simpan informasi pengguna ke SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setInt('user_id', data['user']['id']);
          prefs.setString('user_name', data['user']['name']);
          prefs.setString('user_email', data['user']['email']);

          // Pindah ke halaman home
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavigation()),
          );

          // Tampilkan snackbar login berhasil
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login Successful!'),
              duration: Duration(seconds: 2),
            ),
          );
        } else {
          // Tampilkan pesan kesalahan jika login gagal
          print('Login failed: ${data['message']}');
        }
      } else {
        // Handle HTTP error
        print('HTTP Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle other exceptions
      print('Error: $e');
    } finally {
      setState(() {
        isLoading = false;
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
              "Hello You!",
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
                  "Login",
                  style: bgTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "if you already have an account",
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
                style: whiteTextStyle.copyWith(fontSize: 14),
                controller: emailController,
                decoration: InputDecoration(
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
              height: 385,
            ),
            InkWell(
              onTap: () {
                login();
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
                    child: isLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            "LOGIN",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const RegisterPage();
                    }));
                  },
                  child: Text(
                    "Register",
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
