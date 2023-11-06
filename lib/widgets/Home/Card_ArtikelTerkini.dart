import 'package:flutter/material.dart';
import 'package:growfood/models/homeData.dart';

class ListView_ArtikelTerkini extends StatelessWidget {
  const ListView_ArtikelTerkini({
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
      itemCount: artikelData.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 1.2,
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(26)),
                    padding: EdgeInsets.all(screenWidth * 0.01),
                    child: Image.asset(
                      artikelData[index]['image'],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.15,
                          color: artikelData[index]['labelColor'],
                          child: Center(
                            child: Text(
                              artikelData[index]['label'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.014,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Text(
                          artikelData[index]['title'],
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth * 0.035),
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          artikelData[index]['date'],
                          style: TextStyle(
                              fontSize: screenWidth * 0.035, wordSpacing: 2),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
