import 'package:flutter/material.dart';
import 'package:services_uber/views/home/home_view.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    String ruta = "";
    return Container(
      color: Color.fromARGB(255, 187, 205, 242),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.11,
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(
                bottom: 25.0,
                left: 40.0,
                right: 20.0,
              ),
              child: const SizedBox(
                width: 270.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "A donde vas?",
                    iconColor: Colors.red,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              )),
          GestureDetector(
            onTap: () {
              print("Click Login [ruta: $ruta -]");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const HomeView(),
                ),
              );
            },
            child: Container(
              width: 60.0,
              height: 55.0,
              margin: const EdgeInsets.only(
                bottom: 25.0,
                left: 10.0,
                right: 20.0,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 17, 47),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Text(
                "Ir",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
