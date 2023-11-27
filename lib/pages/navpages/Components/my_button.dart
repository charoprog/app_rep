import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {


  const MyButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: Colors.black,
          borderRadius:BorderRadius.circular(8)
        ),
         child: const Center(
           child: Text(
                 "Sign In",
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 16,
           ),
           ),
         ),
      );
  }
}


class MyButton2 extends StatelessWidget {


  const MyButton2({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius:BorderRadius.circular(8)
      ),
      child: const Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

