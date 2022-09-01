import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 106, 5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 77.0),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height * 0.76,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0),
                ),
                color: Color.fromARGB(255, 240, 231, 231),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100.0),
                  Container(
                    height: 70.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 116, 3),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(255, 212, 212, 206),
                      ),
                      color: const Color.fromARGB(255, 247, 241, 241),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          controller.changeEmail(value);
                        },
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 172, 172, 169),
                          ),
                          hintText: 'Email or Phone number',
                          fillColor: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.orange,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(255, 212, 212, 206),
                      ),
                      color: const Color.fromARGB(255, 247, 241, 241),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          controller.changePassword(value);
                        },
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock_open_outlined,
                            color: Color.fromARGB(255, 172, 172, 169),
                          ),
                          hintText: 'Password',
                          fillColor: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14),
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 212, 85, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    'Continue with social media',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14),
                  ),
                  const SizedBox(height: 36.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .40,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          child: const Text(
                            'Facebook',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 26.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .40,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          child: const Text(
                            'Github',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
