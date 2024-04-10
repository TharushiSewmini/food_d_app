import 'package:flutter/material.dart';
import 'package:food_d_app/componenets/my_drawer_Tile.dart';
import 'package:food_d_app/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Icon(
                  Icons.delivery_dining_rounded,
                  size: 80,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // divider

              Divider(
                color: Theme.of(context).colorScheme.tertiary,
              ),

              // list tiles
              MydrawerTile(
                tileText: 'Home',
                icon: Icons.home,
                onClick: () {
                  Navigator.pop(context);
                },
              ),
              MydrawerTile(
                tileText: 'Settings',
                icon: Icons.settings,
                onClick: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
              const Spacer(),
              MydrawerTile(
                tileText: 'Logout',
                icon: Icons.logout,
                onClick: () {},
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
