import 'package:educonnect/data/models/universitas.dart';
import 'package:educonnect/shared/theme.dart';
import 'package:educonnect/ui/pages/detail_univ.dart';
import 'package:flutter/material.dart';

class UnivPage extends StatefulWidget {
  const UnivPage({super.key});

  @override
  State<UnivPage> createState() => _UnivPageState();
}

class _UnivPageState extends State<UnivPage> {
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
          "Popular Courses",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        backgroundColor: blackColor,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: universitasData.length,
          itemBuilder: ((context, index) {
            final Universitas universitas = universitasData[index];
            return Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailUnivPage(
                      universitas: universitas,
                    );
                  }));
                },
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.all(10.0)),
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              universitas.imageAssets,
                              fit: BoxFit.cover,
                              height: 80,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  universitas.nama,
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                                const SizedBox(height: 10.0),
                                Text(
                                  "Mark ${universitas.mark}",
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
