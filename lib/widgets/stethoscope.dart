import 'package:esmad/constants/color_theme.dart';
import 'package:flutter/material.dart';

class Stethoscope extends StatelessWidget {
  final String title;
  final String desciption;
  final String image;
  const Stethoscope(
      {required this.title, required this.desciption, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      // borderRadius: BorderRadius.all(Radius.circular(12)),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const Text(""),
            Text(
              desciption,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "1500 ETB",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: kdarkGreen),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Get it now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
