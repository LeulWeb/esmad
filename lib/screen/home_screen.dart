import 'package:esmad/constants/color_theme.dart';
import 'package:esmad/screen/team_screen.dart';
import 'package:flutter/material.dart';
import '../constants/color_theme.dart';
// import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future showModal(context) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text("ESMAD"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Picture1.png",
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                        Image.asset(
                          "assets/images/Picture2.png",
                          fit: BoxFit.cover,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "The ESMAD is an exceptional 3D printed stethoscope made in Ethiopia. It offers remarkable sound quality, customization options, and affordability, making it easily accessible to healthcare professionals and enthusiasts. Features include an advanced acoustic chamber for accurate diagnoses, customizable components, low-cost manufacturing, reliability, sustainable production, and the convenience of online ordering. The ESMAD is set to revolutionize the healthcare landscape in Ethiopia and beyond with its game-changing attributes.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 12,
                    ),
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
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("cancel")),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Get it now",
                    style: TextStyle(
                      color: Color(0xff45bf92),
                    ),
                  ),
                ),
              ],
            ));
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: Column(children: [
            Text(
              "Introducing the ESMAD: A Low-Cost, Customizable, and High-Quality 3D Printed Stethoscope",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                  ),
              textAlign: TextAlign.justify,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/images/Picture1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(""),
                    Text(
                      "The ESMAD is an exceptional 3D printed stethoscope made in Ethiopia. It offers remarkable sound quality, customization options, and affordability, making it easily accessible to healthcare professionals and enthusiasts. ",
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
                    InkWell(
                      onTap: () {
                        showModal(context);
                      },
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
