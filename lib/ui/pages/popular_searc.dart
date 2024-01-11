import 'package:educonnect/shared/theme.dart';
import 'package:flutter/material.dart';

class PopularSearch extends StatefulWidget {
  const PopularSearch({super.key});

  @override
  State<PopularSearch> createState() => _PopularSearchState();
}

class _PopularSearchState extends State<PopularSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: whiteColor,
        ),
        title: Text(
          "Popular Searches",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        backgroundColor: blackColor,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemCount: 5,
          itemBuilder: ((context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: const Color.fromARGB(255, 159, 98, 74)),
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
            );
          })),
    );
  }
}
