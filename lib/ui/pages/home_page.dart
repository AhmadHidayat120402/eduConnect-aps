import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/popular_searc.dart';
import 'package:educonnect/ui/pages/univ_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/images/user_1.png'),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                "Hi,$userName",
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            "Build Skills.\nExplore for major/carrer\nPrograms?",
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UnivPage();
                      }));
                    },
                    child: Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/btn_1.png',
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Computer\nEngineering",
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UnivPage();
                      }));
                    },
                    child: Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: bgcolor2,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/btn_2.png',
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Art and Design\nCourses",
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UnivPage();
                      }));
                    },
                    child: Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: bgcolor3,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/btn_3.png',
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Engineering",
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const UnivPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: bgcolor4,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/btn_4.png',
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Basic\nArchitecture",
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Most Popular\nSearches",
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PopularSearch();
                  }));
                },
                child: Text(
                  "See All",
                  style: whiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color.fromARGB(255, 159, 98, 74)),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 33, 39, 46),
                  Color.fromARGB(255, 159, 98, 74)
                ], // Ganti warna sesuai keinginan
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Computer Engineering\nUniversitas Indonesi",
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Mark : 550",
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/ic_1.png'),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
