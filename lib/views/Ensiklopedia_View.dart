// ignore: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:growfood/theme.dart';
import 'package:growfood/models/ensiklopediaData.dart';
import 'package:growfood/widgets/Home/Card_ImagePenyakit.dart';

class Ensiklopedia_View extends StatelessWidget {
  const Ensiklopedia_View({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = EdgeInsets.all(screenWidth * 0.05);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: green2,
          centerTitle: true,
          title: Text(
            "Ensiklopedia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenHeight * 0.03,
            ),
          ),
        ),
        body: ListView(
          padding: padding,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tanaman Populer',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.05),
                ),
                Text.rich(TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("klik lihat semua");
                      },
                    text: 'Lihat selengkapnya',
                    style: TextStyle(
                        color: const Color(0xffD0A430),
                        fontSize: screenHeight * 0.017)))
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            SizedBox(
              height: screenHeight * 0.27,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: tanamanPopulerData.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            tanamanPopulerData[index]['image'],
                            height: screenHeight * 0.18,
                          ),
                        ),
                        Container(
                          height: screenHeight * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                tanamanPopulerData[index]['title'],
                                style: TextStyle(
                                    fontSize: screenHeight * 0.02,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: screenWidth * 0.15,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 22,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Penyakit Populer',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.05),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Listview_Penyakit(
                screenWidth: screenWidth, screenHeight: screenHeight)
          ],
        ));
  }
}
