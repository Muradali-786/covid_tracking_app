import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:maxiii/View/WorldStates.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext contexy) => WorldStatesScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/virus.png'),
                    ),
                  ),
                ),
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'COVID-19\nTracker App',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
