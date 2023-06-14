import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  final String name;
  final String experiance;
  final bool isAdvisor;
  final String image;
  final String currentPosition;

  const Member({
    super.key,
    required this.name,
    required this.experiance,
    required this.isAdvisor,
    required this.currentPosition,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      // header: const Text("Dr Some One"),
      footer: Container(
        color: Colors.black54,
        padding: const EdgeInsets.all(1),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              experiance,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
           
            isAdvisor ?  const Text(
              "Advisory Team",
              style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ): Container(),
            Text(
              currentPosition,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      // header: const Text("Dr Some One"),
      child: Image.asset(
        image
      ),
    );
  }
}
