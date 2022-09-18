import 'package:flutter/material.dart';
import 'package:services_uber/views/history/widgets/listride.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        //height: MediaQuery.of(context).size.height * 0.90,
        //alignment: Alignment(200.0, 200.0),
        padding: const EdgeInsets.only(top: 20.0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(249, 251, 253, 1.0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                color: Color.fromARGB(255, 255, 249, 249),
                shadowColor: Color.fromARGB(31, 5, 46, 11),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: double.maxFinite,
                  height: 150.0,
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    top: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.only(right: 1),

                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(children: [
                          const CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage("assets/image/staria.jpg"),
                          ),
                          const Text(
                            "Van",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ]),

                        // Image.asset(
                        //   'assets/image/staria.jpg',
                        //   fit: BoxFit.cover,
                        //   width: 100,
                        // ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        elevation: 0,
                        child: Column(children: const [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage("assets/image/aveo.jpeg"),
                          ),
                          Text(
                            "Standart",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.only(left: 1),
                        child: Column(children: const [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage("assets/image/tnt150.jpeg"),
                          ),
                          Text(
                            "Moto",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 187, 205, 242),
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Row(
                children: const [
                  Text(
                    "Frecuentes",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 250),
                  Text(
                    "More",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromARGB(255, 14, 3, 62), //AppColors.kPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 400.0,
              color: Color.fromARGB(255, 0, 17, 47), //Colors.transparent,
              child: const ListRide(),
            ),
          ],
        ),
      ),
    );
  }
}
