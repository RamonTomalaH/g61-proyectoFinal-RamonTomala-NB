import 'package:flutter/material.dart';
import 'package:services_uber/views/componente/drawer_view.dart';
import 'package:services_uber/views/componente/splash_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        iconTheme: IconThemeData(color: Colors.blue[400]),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.remove_red_eye_sharp,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Inicio',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (c) => const SplashView()));
            },
            child: const Text('Primera Presentacion'),
          )
        ],
      ),
    );
  }
}
