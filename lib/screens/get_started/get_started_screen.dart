import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff8389E9),
              Color(0xff7970C3),
            ],
            stops: [
              0.25,
              0.9,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Center(
                child: Container(
                  height: 155.0,
                  width: 155.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Hi There,',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I\'m Reflectly',
                    style: GoogleFonts.kanit(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                '   Your new personal\njournaling companion',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Container(
                width: 250.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      offset: const Offset(0.0, 10.0),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Hi, REFLECTLY!',
                    style: TextStyle(
                      color: Color(0xff7771B0),
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  'I ALREADY HAVE AN ACCOUNT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
