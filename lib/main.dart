// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'admin_action/admin_splash.dart';
import 'user_action/user_splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[50]),
      debugShowCheckedModeBanner: false,
      home: const WelcomeSplashPage(),
    );
  }
}

class WelcomeSplashPage extends StatelessWidget {
  const WelcomeSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/Vector.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        "https://assets.stickpng.com/images/62c6f55a7a58a4aa1fb770b3.png",
                        width: 250,
                        height: 100,
                        fit: BoxFit.contain,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 564,
                    // height: 540,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.black45),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/logo.png"),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const Text(
                                      "Connect\nWith Calendly",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const Text(
                                      "on the go",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    const Text(
                                      "Please describe yourself!\nWho are you?",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: MaterialButton(
                                            color: Colors.redAccent,
                                            onPressed: () {
                                              Get.to(const UserAccountPage());
                                            },
                                            child: const SizedBox(
                                              width: 200,
                                              child: Center(
                                                child: Text(
                                                  'User',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: MaterialButton(
                                            color: Colors.redAccent,
                                            onPressed: () {
                                              Get.to(
                                                  const AdminSplashAccountPage());
                                            },
                                            child: const SizedBox(
                                              width: 200,
                                              child: Center(
                                                child: Text(
                                                  'Admin',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
