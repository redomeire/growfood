import 'package:flutter/material.dart';
import 'package:growfood/models/homeData.dart';

class Listview_Penyakit extends StatelessWidget {
  const Listview_Penyakit({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: imageCard.length,
        itemBuilder: (context, index) {
          return Row(children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(imageCard[index]),
            ),
            SizedBox(
              width: screenWidth * 0.01,
            )
          ]);
        },
      ),
    );
  }
}
