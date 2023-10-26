import 'package:flutter/material.dart';
import 'package:tugas_ikan/ui/ikan_page.dart';
import 'package:tugas_ikan/helpers/user_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page = const CircularProgressIndicator();

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    var token = await UserInfo().setToken("123");
    print(token);
    if (token != null) {
      setState(() {
        page = const IkanPage();
      });
    } else {
      setState(() {
        page = const LoginPage() as Widget;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ikannya Ritha',
      debugShowCheckedModeBanner: false,
      home: page,
    );
  }
}

class LoginPage {
  const LoginPage();
}
