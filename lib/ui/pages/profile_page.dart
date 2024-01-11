import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'Guest';
  String userEmail = 'guest@example.com';

  @override
  void initState() {
    super.initState();
    _retrieveUserData();
  }

  Future<void> _retrieveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Mengambil nilai nama dan email dari SharedPreferences
    setState(() {
      userName = prefs.getString('user_name') ?? 'Guest';
      userEmail = prefs.getString('user_email') ?? 'guest@example.com';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        centerTitle: true,
        elevation: 0,
        backgroundColor: blackColor,
        title: Text(
          "My Profile",
          style: whiteTextStyle.copyWith(fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              bool confirmLogout = await showDialog(
                context: context,
                builder: (context) => const ShowDialogLogout(),
              );
              if (confirmLogout ?? false) {
                // Perform logout actions
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.clear();

                // Redirect to login page
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              }
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 150,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/user_1.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Nama",
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    userName,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    "Email",
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    userEmail,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ShowDialogLogout extends StatelessWidget {
  const ShowDialogLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 30),
      title: Text(
        "Logout",
        style: blackTextStyle.copyWith(fontWeight: bold),
      ),
      content: Text(
        "Apakah anda ingin logout ? ",
        style: blackTextStyle.copyWith(fontWeight: medium),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          child: Text(
            'Cancel',
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text(
            'Ok',
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
        ),
      ],
    );
  }
}
