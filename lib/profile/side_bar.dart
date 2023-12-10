import 'package:flutter/material.dart';
import 'package:reviewapps/profile/list_tile.dart';
import 'package:reviewapps/screens/homescreen.dart';

class sidebar extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onDiscoverScreen;
  final void Function()? onSignOut;
  final void Function()? onHome;

  const sidebar(
      {super.key,
      this.onProfileTap,
      this.onDiscoverScreen,
      this.onSignOut,
      this.onHome});

  // void onHome() {
  //   Navigator.pop(context);
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => HomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    // void onHome() {
    //   Navigator.pop(context);
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => HomeScreen()));
    // }

    return Drawer(
      backgroundColor: const Color.fromARGB(255, 239, 200, 128),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.person,
                color: Colors.black,
                size: 64,
              )),
              listtile(icon: Icons.home, text: 'HOME', onTap: onHome),
              listtile(
                  icon: Icons.person, text: 'PROFILE', onTap: onProfileTap),
              listtile(
                  icon: Icons.list,
                  text: 'MENU MAKANAN',
                  onTap: onDiscoverScreen),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child:
                listtile(icon: Icons.logout, text: 'LOGOUT', onTap: onSignOut),
          )
        ],
      ),
    );
  }
}
