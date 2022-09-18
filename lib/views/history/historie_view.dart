import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:services_uber/views/componente/drawer_view.dart';
import 'package:services_uber/views/history/widgets/content.dart';
import 'package:services_uber/views/history/widgets/footer.dart';

class HistorieView extends StatefulWidget {
  const HistorieView({super.key});

  @override
  State<HistorieView> createState() => _HistorieViewState();
}

class _HistorieViewState extends State<HistorieView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 17, 47),
      drawer: const DrawerView(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Recorridos recientes",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 204, 224, 239),
          ),
        ),
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
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 204, 224, 239)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: const [
          //Header(),
          Content(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Footer(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 0, 17, 47),
        onTap: null,
      ),
    );
  }
}
