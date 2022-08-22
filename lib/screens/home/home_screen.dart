import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myEmail = "";

  getEmailData() async {
    final prefs = await SharedPreferences.getInstance();
    myEmail = prefs.getString("email") ?? "--";
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getEmailData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Your Email is: $myEmail',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
