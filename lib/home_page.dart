import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_training_app/video_info.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const list = [
    {"title": "Glues", "img": 'assets/img.jpg'},
    {"title": "Abs", "img": 'assets/img.jpg'},
    {"title": "Legs", "img": 'assets/img.jpg'},
    {"title": "Arms", "img": 'assets/img.jpg'},
    {"title": "Arms", "img": 'assets/img.jpg'},
    {"title": "Arms", "img": 'assets/img.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Training",
                    style: TextStyle(
                        fontSize: 30,
                        color: color.AppColor.homePageTitle,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Your program",
                    style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageSubtitle,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageDetail,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(() => VideoInfo());
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: color.AppColor.homePageIcons,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next workout",
                        style: TextStyle(
                            fontSize: 16,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Legs Toning",
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "and Glutes Workout",
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: color
                                      .AppColor.homePageContainerTextSmall),
                            ),
                            Expanded(child: Container()),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  boxShadow: [
                                    BoxShadow(
                                      color: color.AppColor.gradientFirst,
                                      blurRadius: 10,
                                      offset: const Offset(4, 8),
                                    )
                                  ]),
                              child: const Icon(
                                Icons.play_circle_fill,
                                size: 60,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                        margin: const EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: ResizeImage(
                                  AssetImage("assets/background.jpg"),
                                  height: 120,
                                  width: 150),
                              alignment: Alignment.centerLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 40,
                                  offset: const Offset(8, 10),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.3)),
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: const Offset(-1, -5),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.3)),
                            ]),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(right: 200, bottom: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: ResizeImage(
                                  AssetImage("assets/running.png"),
                                  height: 120),
                              alignment: Alignment.center),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 100,
                        margin: const EdgeInsets.only(left: 150, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You are doing great",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color.AppColor.homePageDetail,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: "Keep it up\n",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: color.AppColor.homePagePlanColor,
                                    ),
                                    children: const [
                                  TextSpan(
                                    text: "stick to your plan",
                                  )
                                ]))
                          ],
                        ),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Text(
                    "Area of focus",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: color.AppColor.homePageTitle,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      children: list
                          .map((e) => Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: ResizeImage(
                                        AssetImage("assets/img.jpg"),
                                        height: 120,
                                      ),
                                      alignment: Alignment.center),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 3,
                                        offset: const Offset(5, 5),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1)),
                                    BoxShadow(
                                        blurRadius: 3,
                                        offset: const Offset(-5, 5),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1)),
                                  ]),
                              child: Center(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      e["title"].toString(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: color.AppColor.homePageDetail,
                                      ),
                                    )),
                              )))
                          .toList()))
            ],
          ),
        ),
      ),
    );
  }
}
