import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reviewapps/login.dart';
import 'package:reviewapps/profile/text_box.dart';
import 'package:reviewapps/profile/side_bar.dart';
import 'package:reviewapps/screens/homescreen.dart';
import 'package:reviewapps/screens/screens.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  static const routeName = '/profilepage';

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  Future<void> editField(String field) async {
    String newValue = "";
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[900],
              title: Text(
                "Edit " + field,
                style: TextStyle(color: Colors.white),
              ),
              content: TextField(
                autofocus: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Enter new $field",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                onChanged: (value) {
                  newValue = value;
                },
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(newValue),
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ));
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  void onHome() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void goToProfilePage() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => profilepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 200, 128),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' P R O F I L E  ',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      drawer: sidebar(
        onProfileTap: goToProfilePage,
        onSignOut: () {
          _auth.signOut();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Login()));
        },
        onHome: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        onDiscoverScreen: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DiscoverScreen()));
        },
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Icon(
            Icons.person,
            size: 72,
          ),
          const SizedBox(height: 10),
          Text(
            currentUser.email!,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'My Details',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          textbox(
            text: 'Frisca Yuni Adilia Putri',
            sectionName: 'username',
            onPressed: () => editField('username'),
          ),
          textbox(
            text: 'Praktikum Pemrograman Mobile H',
            sectionName: 'bio',
            onPressed: () => editField('bio'),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'My Posts',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
