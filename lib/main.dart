import 'package:flutter/material.dart';
import 'package:trox/pages/login_page.dart';
import 'package:trox/pages/sign_up_page.dart';
import 'package:trox/pages/wlc_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Trox', debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
