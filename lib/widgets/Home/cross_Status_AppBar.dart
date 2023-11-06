import 'package:flutter/material.dart';

class CrossStatusappBar extends StatelessWidget {
  const CrossStatusappBar({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          elevation: 2,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.cloud,
                  color: Colors.green,
                  size: 28,
                ),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '25 C',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Text(
                      "Cerah Berawan",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.recommend_rounded,
                  color: Colors.green,
                  size: 28,
                ),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('200',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    Text(
                      "Growfood Point",
                      style: TextStyle(color: Colors.green, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
