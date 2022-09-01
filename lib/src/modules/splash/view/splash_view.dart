import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var controller = Modular.get<SplashController>();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!controller.isLogged()) {
          Modular.to.pushReplacementNamed('/login');
        } else {
          Modular.to.pushReplacementNamed('/home');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 234),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 180.0),
              Image.asset(
                'assets/image/tel.png',
                color: Colors.orange[800],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
