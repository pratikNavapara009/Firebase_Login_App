import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  splash() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Navigator.of(context).pushReplacementNamed("welcome");
  }

  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/images.jpeg",
              fit: BoxFit.cover,
              width: 300,
              height: 300,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/firebase.png",
                filterQuality: FilterQuality.high),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
