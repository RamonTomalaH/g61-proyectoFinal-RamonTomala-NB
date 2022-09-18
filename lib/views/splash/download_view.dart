import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DownloadView extends StatefulWidget {
  const DownloadView({super.key});

  @override
  State<DownloadView> createState() => _DownloadViewState();
}

class _DownloadViewState extends State<DownloadView> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 130,
            right: 5,
            left: 5,
            child: Lottie.asset(
              'assets/animate/qrcode.json',
              //width: 60,
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 400,
              child: Column(
                children: [
                  Flexible(
                    child: PageView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            const Text(
                              'Chofer',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 17, 47),
                              ),
                            ),
                            const Text(
                              'Usuario',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 17, 47),
                              ),
                            ),
                            const Text(
                              'Administrador',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 17, 47),
                              ),
                            ),
                            //const SizedBox(width: 20.0, height: 10.0),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Horizon',
                                color: Colors.black,
                              ),
                              child: AnimatedTextKit(
                                pause: const Duration(milliseconds: 9000),
                                animatedTexts: [
                                  RotateAnimatedText(
                                    'DESCARGA',
                                    duration: const Duration(seconds: 4),
                                  ),
                                ],
                                totalRepeatCount: 1,
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
