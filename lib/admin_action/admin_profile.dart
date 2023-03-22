import 'package:flutter/material.dart';

class AdminProfileWidget extends StatelessWidget {
  const AdminProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Get to Dashboard"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
                border: Border.symmetric()),
            width: MediaQuery.of(context).size.width * 0.60,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: const [
                        Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/2m.jpg"),
                            radius: 70,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Hi,',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 44.0),
                    const Text(
                      "UserName",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      initialValue: "userName",
                      enabled: false,
                      decoration: const InputDecoration(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      initialValue: "userEmail",
                      enabled: false,
                      decoration: const InputDecoration(),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      initialValue: "userPhone",
                      enabled: false,
                      decoration: const InputDecoration(),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
