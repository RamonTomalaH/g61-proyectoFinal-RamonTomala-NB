import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:services_uber/views/login/login_view.dart';
import 'package:services_uber/views/splash/download_view.dart';
import 'package:services_uber/views/splash/loading_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  PageController pageController = PageController();
  int currentIndex = 0;
  var currentTabs = [const LoadingView(), const DownloadView(), LoginView()];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 40), (Timer timer) {
      if (currentIndex < 2) {
        currentIndex++;
        pageController.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeIn,
        );
      } else {
        currentIndex = 2;
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: currentTabs,
      ),
    );
  }
}
