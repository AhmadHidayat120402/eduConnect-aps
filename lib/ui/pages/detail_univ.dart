// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:educonnect/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:educonnect/data/models/universitas.dart';

class DetailUnivPage extends StatefulWidget {
  final Universitas universitas;
  const DetailUnivPage({
    Key? key,
    required this.universitas,
  }) : super(key: key);

  @override
  State<DetailUnivPage> createState() => _DetailUnivPageState();
}

class _DetailUnivPageState extends State<DetailUnivPage> {
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
          widget.universitas.nama,
          style: whiteTextStyle.copyWith(fontSize: 18),
        ),
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
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(widget.universitas.imageAssets),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                      child: Text(
                    "Deskripsi",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  )),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.universitas.deskripsi,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.justify,
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
