import 'package:car_dashbord/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            _controller.forward();
            return FadeTransition(
              opacity: _animation,
              child: const Dashboard(),
            );
          },
        ));
      },
    );

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 5));

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox.expand(
        child: Image(
          image: AssetImage("assets/icons/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ).animate().fade(duration: const Duration(seconds: 5)).fadeOut(),
    );
  }
}
