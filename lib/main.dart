import 'package:feliciastore/Screens/Base/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Base/base_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            elevation: 0
          )
        ),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: LoginScreen());
  }
}
