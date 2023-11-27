import 'package:flutter/material.dart';
import 'package:trox/pages/login_page.dart';
import 'package:trox/widgets/appLgText.dart';
import 'package:trox/widgets/appText.dart';
import 'package:trox/widgets/respButton.dart';
import 'navpages/main_page.dart';

class WlcPage extends StatefulWidget {
  const WlcPage({Key? key}) : super(key: key);

  @override
  State<WlcPage> createState() => _WlcPageState();
}

class _WlcPageState extends State<WlcPage> {
  List images = [
    "wlc_image1.jpg",
    "wlc_image2.jpg",
    "wlc_image3.jpg",
  ];

  List texts1 = ["Expedition", "Globetrotting", "wandering"];

  List texts2 = [
    "Travel is the movement of people between distant geographical locations.",
    "Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship",
    "People love to go travelling to see new places and experience different cultures"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trox"),
                        AppText(text: texts1[index], size: 30),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: texts2[index],
                            size: 14,
                          ),
                        ),
                        const SizedBox(height: 40,),
                        Container(
                            width: 200,
                            child: Row(children: [
                              RespBtn(onPressed: () {
                                navigateToSecondPage(context);
                              })
                            ])),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.lightBlueAccent
                                  : Colors.lightBlueAccent.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

void navigateToSecondPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}
