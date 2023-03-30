import 'package:firstapp/screens/dashboard_screen.dart';
import 'package:firstapp/screens/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/loginpage.dart';
import 'controllers/sidemenucontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginpageversion(),
    );
  }
}

