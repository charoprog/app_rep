import 'package:flutter/material.dart';
import 'package:trox/widgets/appLgText.dart';
import 'package:trox/widgets/appText.dart';
import 'detail pages/detail_page1.dart';
import 'detail pages/detail_page2.dart';
import 'detail pages/detail_page2.dart';
import 'detail pages/detail_page3.dart';
import 'detail pages/detail_page4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images1 = {
    "Cinque_Terre.png": "Cinque Terre",
    "Dubai.png": "Dubai",
  };
  var images2 = {
    "img/Cedars_of_God.png",
    "img/Mont_Blanc.png",
    "img/Mount_Denali.png",
    "img/Wadi_Qannoubine.png",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //menu text
        Container(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Row(
            children: [
              Icon(Icons.menu, size: 30, color: Colors.black54),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        //discover text
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: AppLargeText(text: "Discover"),
        ),
        SizedBox(
          height: 15,
        ),
        //tab bar
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black26,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: CircleTabIndicator(color: Colors.black, radius: 3),
              tabs: [
                Tab(
                  text: "places",
                ),
                //Tab(
                // text: "Inspiration",
                //),
                //Tab(
                // text: "Emotions",
                //),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
         Container(
          padding: const EdgeInsets.only(left: 20),
          height: 260,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        // Call the method to navigate to the second page
                        navigateToDP1(context);
                      }
                      if (index == 1) {
                        // Call the method to navigate to the second page
                        navigateToDP2(context);
                      }
                      if (index == 2) {
                        // Call the method to navigate to the second page
                        navigateToDP3(context);
                      }
                      if (index == 3) {
                        // Call the method to navigate to the second page
                        navigateToDP4(context);
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(images2.elementAt(index)),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),

        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(
                text: "Explore more",
                size: 20,
              ),
              //AppText(text: "See all", color: Colors.black26)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 120,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: Column(
                    children: [
                      Container(
                        //margin: const EdgeInsets.only(right: 50),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    "img/" + images1.keys.elementAt(index)),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: AppText(
                          size: 12,
                          text: images1.values.elementAt(index),
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}

void navigateToDP1(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage1()),
  );
}

void navigateToDP2(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage2()),
  );
}

void navigateToDP3(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage3()),
  );
}

void navigateToDP4(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailPage4()),
  );
}
