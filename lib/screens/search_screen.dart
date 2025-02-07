import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:first_app/widgets/doubel_text-widget.dart';
import 'package:first_app/widgets/icon_text_widget.dart';
import 'package:first_app/widgets/text_tap.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchSceen extends StatelessWidget {
  const SearchSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20), vertical: 20),
        children: [
          const Gap(40),
          Text(
            "what are\nyou looking for?",
            style: Styles.headLinestyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketTap(
            firstTap: "Airline ticket",
            secondTap: "Hotels",
          ),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(
              icon: Icons.flight_takeoff_rounded, text: "Depurture"),
          Gap(AppLayout.getHeight(20)),
          const IconTextWidget(icon: Icons.flight_land, text: "Arivail"),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XD91130CE)),
              child: Center(
                child: Text(
                  "find tickets",
                  style: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )),
          Gap(AppLayout.getHeight(40)),
          const DoubelText(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/seats.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                      "20% discount on the early booking of this flight.Dont miss",
                      style: Styles.headLinestyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(15),
                            vertical: AppLayout.getHeight(15)),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              "take survey about our services and get discount ",
                              style: Styles.headLinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        color: const Color(0XFFEC6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLinestyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "😘", style: TextStyle(fontSize: 38 / 2)),
                          TextSpan(text: "😜", style: TextStyle(fontSize: 50)),
                          TextSpan(
                              text: "😍", style: TextStyle(fontSize: 38 / 2)),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
