import 'package:esmad/screen/home_screen.dart';
import 'package:esmad/widgets/memeber.dart';
import 'package:flutter/material.dart';

import '../constants/color_theme.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E S M A D"),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        backgroundColor: klight,
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(
            height: 50,
            child: Image.asset("assets/images/motto.png"),
          ),
          const SizedBox(
            height: 22,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const Home()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_hospital,
                  color: kdarkNavy,
                  size: 30,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Our Work",
                  style: TextStyle(
                    color: kdarkNavy,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const Team()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.group,
                  color: kdarkNavy,
                  size: 30,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Our Team",
                  style: TextStyle(
                    color: kdarkNavy,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Who are we?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text('Meet our team'),
            const SizedBox(
              height: 22,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                children: [
                  const Member(
                    image: "assets/images/amare.png",
                    isAdvisor: true,
                    experiance:
                        "Entrepreneur, Project lead & Software developer",
                    currentPosition: "Director at BiTec",
                    name: "Amare Kassaw(Ph.D.)",
                  ),
                  const Member(
                    name: "Dr. Wondwossen A.",
                    experiance: "Medical Surgeon at Han Clinic",
                    currentPosition: "10 years of work experience",
                    image: "assets/images/ad2.png",
                    isAdvisor: true,
                  ),
                  const Member(
                      name: "Henok Mebratie",
                      experiance: "Mechanical Chemical Eng",
                      currentPosition: "Founder & CEO of Lik3D CNC",
                      isAdvisor: true,
                      image: "assets/images/ad3.png"),
                  GridTile(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      color: kdarkNavy,
                      child: const Text(
                        "Leadership Teams",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Member(
                    name: "Fasil T.",
                    currentPosition: "Founder and CEO of ESMAD",
                    experiance:
                        "CNC Machine developer Developed Portable Medical Oxygen Concentrator, Fetoscope & many manufacturing projects",
                    isAdvisor: false,
                    image: "assets/images/t1.png",
                  ),
                  const Member(
                    name: "Mahider A.",
                    currentPosition: "Founder and CEO of ESMAD",
                    experiance:
                        "Project Lead at DVSI Medical supply chain analysis",
                    isAdvisor: false,
                    image: "assets/images/t2.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
