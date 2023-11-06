import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:growfood/theme.dart';
import 'package:growfood/widgets/Home/Card_ArtikelTerkini.dart';
import 'package:growfood/widgets/Home/Card_ImagePenyakit.dart';
import 'package:growfood/widgets/Home/cross_Status_AppBar.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:growfood/widgets/Home/Card_AktivitasHariIni.dart';

// ignore: camel_case_types
class Home_View extends StatelessWidget {
  const Home_View({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = EdgeInsets.all(screenWidth * 0.05);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 3,
        //iconmap
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/icon_location.svg',
          ),
        ),
        //Text
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, Zauhair!',
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: screenWidth * 0.065),
            ),
            Text('Malang, Jawa Timur',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: screenWidth * 0.038,
                )),
          ],
        ),
        //Row Kanan
        actions: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/icon_notification.svg",
                width: 28,
                height: 28,
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/icon_profile.png')))
            ],
          )
        ],
        toolbarHeight: 100,
      ),
      body: ListView(
        padding: padding,
        children: [
          CrossStatusappBar(
              screenWidth: screenWidth, screenHeight: screenHeight),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Aktivitas Hari ini',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.045),
              ),
              Text.rich(TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("klik lihat semua");
                    },
                  text: 'Lihat semua',
                  style: TextStyle(
                      color: const Color(0xffD0A430),
                      fontSize: screenHeight * 0.017)))
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          ListView_Builder_Card_AktivitasHariIni(
              screenWidth: screenWidth, screenHeight: screenHeight),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Penyakit Tanaman Populer',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.043),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Listview_Penyakit(
              screenWidth: screenWidth, screenHeight: screenHeight),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Artikel Terkini',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.045),
              ),
              Text.rich(TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("klik lihat semua");
                    },
                  text: 'Lihat semua',
                  style: TextStyle(
                      color: const Color(0xffD0A430),
                      fontSize: screenHeight * 0.017)))
            ],
          ),
          ListView_ArtikelTerkini(
              screenWidth: screenWidth, screenHeight: screenHeight)
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
