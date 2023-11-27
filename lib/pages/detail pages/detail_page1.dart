import 'package:flutter/material.dart';
import 'package:trox/pages/navpages/main_page.dart';
import 'package:trox/widgets/appLgText.dart';
import 'package:trox/widgets/appText.dart';
import 'package:trox/widgets/app_buttons.dart';
import '../../widgets/respButton.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({super.key});

  @override
  State<DetailPage1> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage1> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/Cedars_of_God.png"),
                        fit: BoxFit.cover),
                  ),
                )),
            //Positioned(
                //left: 20,
               // top: 50,
               // child: Row(
                 // children: [
                   // IconButton(
                     // onPressed: () {
                      //  navigateToMP(context);
                     // },
                     // icon: Icon(Icons.menu),
                     // color: Colors.white,
                   // )
                 // ],
               // )),
            Positioned(
                left: 330,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        navigateToMP(context);
                      },
                      icon: Icon(Icons.exit_to_app_sharp),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 270,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Cedars of God", color: Colors.black.withOpacity(0.8)),
                         // AppLargeText(text: "\$ 100", color: Colors.black54,),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black54,),
                          SizedBox(width: 5,),
                          AppText(text: "Bcharri, Lebanon", color: Colors.black54,)
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(Icons.star, color:index<4? Colors.yellow : Colors.grey);
                          })),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.2)",
                            color: Colors.black38,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(height: 5),
                      AppText(
                        text: "Number of People in your group",
                        color: Colors.black38,
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                  size: 55,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.black
                                      : Colors.black12,
                                  borderColor: selectedIndex == index
                                      ? Colors.black
                                      : Colors.black38,
                                  text: (index + 1).toString()),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 15),
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(height: 8),
                      AppText(
                        text: "located in the Kadisha Valley of Bsharre,"
                            " Lebanon, are one of the last vestiges of the extensive forests"
                            " of the Lebanon cedar that thrived across Mount Lebanon in antiquity",
                        color: Colors.black26,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                      size: 55,
                      color: Colors.grey,
                      backgroundColor: Colors.white,
                      borderColor: Colors.black45,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RespBtn(
                      isRep: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

void navigateToMP(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage()),
  );
}
