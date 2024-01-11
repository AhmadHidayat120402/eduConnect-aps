import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/home_page.dart';
import 'package:educonnect/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomePage(),
    const SizedBox(
      child: Center(child: Text("bottom navigasi 2")),
    ),
    const ProfilePage(),
    const SizedBox(
      child: Center(child: Text("bottom navigasi 4")),
    ),
  ];

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: blackColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 16,
        elevation: 0,
        child: BottomNavigationBar(
          onTap: ontap,
          currentIndex: currentIndex,
          backgroundColor: blackColor,
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: whiteColor,
          unselectedItemColor: whiteColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              whiteTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: InkResponse(
                onTap: () => ontap(0),
                radius: 28,
                child: Image.asset(
                  "assets/images/bottom_btn1.png",
                  width: 24,
                  height: 24,
                ), // Sesuaikan ukuran radius sesuai kebutuhan
              ),
              label: "",
              activeIcon: InkResponse(
                onTap: () => ontap(0),
                radius: 32,
                child: Image.asset(
                  "assets/images/bottom_btn1.png",
                  width: 28,
                  height: 28,
                  color: whiteColor,
                ), // Sesuaikan ukuran radius sesuai kebutuhan
              ),
            ),
            BottomNavigationBarItem(
              icon: InkResponse(
                onTap: () => ontap(1),
                radius: 28,
                child: Image.asset(
                  "assets/images/bottom_btn2.png",
                  width: 24,
                  height: 24,
                ),
              ),
              label: "",
              activeIcon: InkResponse(
                onTap: () => ontap(1),
                radius: 32,
                child: Image.asset(
                  "assets/images/bottom_btn2.png",
                  width: 28,
                  height: 28,
                  color: whiteColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: InkResponse(
                onTap: () => ontap(2),
                radius: 28,
                child: Image.asset(
                  "assets/images/bottom_btn3.png",
                  width: 24,
                  height: 24,
                ),
              ),
              label: "",
              activeIcon: InkResponse(
                onTap: () => ontap(2),
                radius: 32,
                child: Image.asset(
                  "assets/images/bottom_btn3.png",
                  width: 28,
                  height: 28,
                  color: whiteColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: InkResponse(
                onTap: () => ontap(3),
                radius: 28,
                child: Image.asset(
                  "assets/images/bottom_btn4.png",
                  width: 24,
                  height: 24,
                ),
              ),
              label: "",
              activeIcon: InkResponse(
                onTap: () => ontap(3),
                radius: 32,
                child: Image.asset(
                  "assets/images/bottom_btn4.png",
                  width: 28,
                  height: 28,
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
