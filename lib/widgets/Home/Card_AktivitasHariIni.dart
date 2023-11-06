import 'package:flutter/material.dart';
import 'package:growfood/models/homeData.dart';
import 'package:growfood/theme.dart';

class ListView_Builder_Card_AktivitasHariIni extends StatelessWidget {
  const ListView_Builder_Card_AktivitasHariIni({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // Tambahkan ini
      physics: const NeverScrollableScrollPhysics(), // Tambahkan ini
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 1.2,
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.01),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(screenWidth * 0.01),
                    child: Image.asset(
                      cardData[index]['image'],
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardData[index]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth * 0.04),
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          cardData[index]['desc'],
                          maxLines: 3, // Atur sesuai kebutuhan
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: screenWidth * 0.027, wordSpacing: 2),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Text(
                      '${cardData[index]['progress']}%',
                      style: TextStyle(
                          color: green1,
                          fontSize: screenWidth * 0.053,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
