import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class AdminLoginAccountPage extends StatefulWidget {
  const AdminLoginAccountPage({super.key});

  @override
  State<AdminLoginAccountPage> createState() => _AdminLoginAccountPageState();
}

class _AdminLoginAccountPageState extends State<AdminLoginAccountPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? loginPassValidation(value) {
    if (value!.isEmpty) {
      return 'Enter password';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (!RegExp(r'^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value)) {
      return 'Password should have at atleast 1 letter, 1 number, 1 special character';
    }
    return null;
  }

  String? loginUserNameValidation(value) {
    if (value!.isEmpty) {
      return 'Enter Username';
    } else if (value.length < 5) {
      return 'Enter the valid Username';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[100],
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Image.asset(
              "assets/Vector.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Login into your \nAdmin Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    letterSpacing: 3,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.black12),
                    width: 380,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/logo.png"),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'Admin Login',
                          style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 3,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: userNameController,
                            style: const TextStyle(color: Colors.black),
                            validator: loginUserNameValidation,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Type Email",
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                gapPadding: 3,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: passwordController,
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            validator: loginPassValidation,
                            decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Type Password",
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                                gapPadding: 3,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(width: 13),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30)),
                          child: MaterialButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Get.to(const Home());
                              }
                            },
                            child: const SizedBox(
                              width: 100,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
