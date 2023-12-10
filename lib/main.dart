import 'package:reviewapps/login.dart';
import 'package:reviewapps/profile/profilepage.dart';
import 'package:reviewapps/register.dart';
import 'package:reviewapps/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

FirebaseApp? app;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyC7bUK6a3vx2tAytTBJg6mDTe7LHwjPTFE",
      appId: "1:637392180702:android:56e27431bd027134ddb94f",
      messagingSenderId: "Messaging sender id here",
      projectId: "reviewapps-681c3",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Apps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticleScreen.routeName: (context) => ArticleScreen(),
        profilepage.routeName: (context) => const profilepage()
      },
    );
  }
}
