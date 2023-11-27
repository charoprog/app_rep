import 'package:flutter/material.dart';
import 'package:trox/pages/navpages/Components/my_button.dart';
import 'package:trox/pages/navpages/Components/my_textfields.dart';
import 'package:trox/pages/navpages/main_page.dart';
import 'package:trox/pages/sign_up_page.dart';
import 'package:trox/pages/wlc_pages.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Icon(Icons.lock, size: 100),
              const SizedBox(height: 50),
              Text(
                "Welcome To Trox",
                style: TextStyle(color: Colors.blue[400], fontSize: 16),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: username,
                hintText: "Username",
                obscureText: false,
                labelText: "Username",
              ),
              const SizedBox(height: 15),
              MyTextField(
                controller: password,
                hintText: "Password",
                obscureText: true,
                labelText: "Password",
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue[600]),
                  ),
                ]),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                  onTap: () {
                    if (username.text == "admin" && password.text == "admin") {
                      navigate(context);
                    } else if (username.text.isEmpty || password.text.isEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Error"),
                              content: const Text("Please fill all the fields"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Ok"))
                              ],
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Error"),
                              content: const Text(
                                  "Please check the username or password"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Ok"))
                              ],
                            );
                          });
                    }
                  },
                  child: const MyButton()),
              const SizedBox(height: 25),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.blue[400],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Don't have an Account",
                        style: TextStyle(color: Colors.blue[700]),
                        ),

                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.blue[400],
                      )),
                    ],
                  )),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    navigateToSU(context);
                    },
                  child: const MyButton2()),

            ],
          ),
        ),
      ),
    );
  }
}

void navigate(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage()),
  );
}

void navigateToSU(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignUp()),
  );
}
