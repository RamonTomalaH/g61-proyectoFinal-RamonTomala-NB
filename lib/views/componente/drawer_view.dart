import 'package:flutter/material.dart';
import 'package:services_uber/views/history/historie_view.dart';
import 'package:services_uber/views/home/home_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage("assets/image/login.png"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Bienvenido Oscar",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "chofer1@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeView(),
                    ),
                  )
                },
                leading: const Icon(Icons.home_max_rounded),
                title: const Text("Home"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              const Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeView(),
                    ),
                  )
                },
                leading: Icon(Icons.add_alert_sharp),
                title: const Text("Notificaciones"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              const Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeView(),
                    ),
                  )
                },
                leading: const Icon(Icons.mobile_friendly_outlined),
                title: const Text("Amigos"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              const Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeView(),
                    ),
                  )
                },
                leading: const Icon(Icons.settings),
                title: const Text("Configuracion"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              const Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HistorieView(),
                    ),
                  ),
                },
                leading: const Icon(Icons.history),
                title: const Text("Historico"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
