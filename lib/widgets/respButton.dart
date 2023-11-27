import 'package:flutter/material.dart';
import 'package:trox/widgets/appText.dart';

class RespBtn extends StatelessWidget {
  bool? isRep;
  double? width;
  VoidCallback? onPressed;
  RespBtn({Key? key, this.width = 120, this.isRep = false, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          width: isRep == true ? double.maxFinite : width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlueAccent),
          child: Row(
            mainAxisAlignment: isRep == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isRep == true
                  ? Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: AppText(
                        text: "Book your Trip",
                        color: Colors.white,
                      ))
                  : Container(),
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              GestureDetector(
                onTap: onPressed,
                child: Container(
                  child: Row(
                    children: [
                      const Icon(IconData(0xea5a, fontFamily: 'MaterialIcons')),
                      const Icon(IconData(0xea5a, fontFamily: 'MaterialIcons')),
                      const Icon(IconData(0xea5a, fontFamily: 'MaterialIcons')),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
