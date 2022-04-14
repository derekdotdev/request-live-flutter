import 'package:flutter/material.dart';

import './screens/auth_screen.dart';
import './screens/new_request_screen.dart';
import './screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.purple,
        primaryColor: Colors.grey,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.purple,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: const AuthScreen(),
      routes: {
        AuthScreen.routeName: (ctx) => const AuthScreen(),
        SearchScreen.routeName: (ctx) => const SearchScreen(),
      },
    );
  }
}
