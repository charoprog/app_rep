// ignore_for_file: unused_import, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _UserProfileState();
}

class _UserProfileState extends State<SignUp> {
  bool isObscurePassword = true;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _CpasswordController = TextEditingController();
  String selectedGender = '';
  bool acceptTermsAndPolicies = false;
  List<String> languages = [
    'English',
    'French',
    'Spanish',
    'Arabic',
  ];
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xFF526799),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Welcome To Trox",
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _usernameController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    labelText: 'E-mail',
                    //labelStyle: Styles.text_Theme,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(
                            0xFF526799), // Border color when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.grey, // Border color when not focused
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _emailController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    labelText: 'User-Name',
                    //labelStyle: Styles.text_Theme,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(
                            0xFF526799), // Border color when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.grey, // Border color when not focused
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    labelText: 'Password',
                    //labelStyle: Styles.text_Theme,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(
                            0xFF526799), // Border color when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.grey, // Border color when not focused
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _CpasswordController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    labelText: 'Confirm yourPassword',
                    //labelStyle: Styles.text_Theme,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(
                            0xFF526799), // Border color when focused
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.grey, // Border color when not focused
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Native Language: ',
                  ),
                  DropdownButton<String>(
                    value: selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value!;
                      });
                    },
                    items: languages.map((language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(language),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender: ',
                  ),
                  Radio<String>(
                    value: 'Male',
                    groupValue: selectedGender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  Text(
                    'Male',
                  ),
                  Radio<String>(
                    value: 'Female',
                    groupValue: selectedGender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    // style: Styles.headlinestyle3
                    // .copyWith(color: const Color(0xFF526799)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Accept Terms and Conditions',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: const Color(0xFF526799),
                    ),
                  ),
                  Checkbox(
                    value: acceptTermsAndPolicies,
                    onChanged: (value) {
                      setState(() {
                        acceptTermsAndPolicies = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                  onPressed: () {
                    if (_usernameController.text.isNotEmpty ||
                        _emailController.text.isNotEmpty ||
                        _passwordController.text.isNotEmpty) {
                      _usernameController.clear();
                      _emailController.clear();
                      _passwordController.clear();
                      _CpasswordController.clear();
                      acceptTermsAndPolicies = false;
                    }
                  },
                  child: Text("Cancel",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.5,
                        color: Colors.white,
                      )),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_usernameController.text.isEmpty ||
                        _emailController.text.isEmpty ||
                        _passwordController.text.isEmpty ||
                        _CpasswordController.text.isEmpty) {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }
                  },
                  child: Text("Back to LogIn",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                          color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeHolder, bool isPasswordTextField) {
    return TextField(
      controller: isPasswordTextField ? _passwordController : null,
      obscureText: isPasswordTextField ? isObscurePassword : false,
      style: TextStyle(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12),
        labelText: labelText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: const Color(0xFF526799),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}


void navigateToLP(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}

