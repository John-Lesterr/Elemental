import 'package:elemental/pages/Nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: Text(
              'Periodic Elements',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 350,
              width: 350,
              child: Lottie.asset("assets/ele.json"),
            ),
          ),
          SizedBox(
            width: 400,
            height: 100,
            child: Text(
              'Explore the periodic elements in 3D',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
