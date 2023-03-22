// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_account.dart';
import 'login_account.dart';

class AdminSplashAccountPage extends StatelessWidget {
  const AdminSplashAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
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
                    width: 464,
                    height: 500,
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
                                      "    Welcome\n    Admin",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: MaterialButton(
                                        color: Colors.redAccent,
                                        onPressed: () {
                                          Get.to(
                                              const AdminCreateAccountPage());
                                        },
                                        child: const SizedBox(
                                          width: 200,
                                          child: Center(
                                            child: Text(
                                              'Create Account',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: MaterialButton(
                                        color: Colors.redAccent,
                                        onPressed: () {
                                          Get.to(const AdminLoginAccountPage());
                                        },
                                        child: const SizedBox(
                                          width: 200,
                                          child: Center(
                                            child: Text(
                                              'Login',
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
