import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/widgets/column-layout.dart';
import 'package:first_app/widgets/layout_builder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/male_avt.png"),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "M.Huzaifa",
                      style: Styles.headLinestyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text("Pakistan",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500)),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(3),
                          vertical: AppLayout.getHeight(3)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(100)),
                          color: const Color(0xFFFEF4F3)),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799)),
                              child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15,
                              )),
                          Gap(AppLayout.getHeight(5)),
                          const Text(
                            "premium status",
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Text(
                        "Eidt",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border:
                          Border.all(width: 15, color: const Color(0XFF264CD2)),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(25),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 25,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 20,
                        ),
                      ),
                      Gap(AppLayout.getWidth(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "You\'v have got new award",
                            style: Styles.headLinestyle2.copyWith(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            // textAlign: TextAlign.center,
                            style: Styles.headLinestyle3.copyWith(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              "Accumulated miles",
              style: Styles.headLinestyle2,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  )),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "192802",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Styles.textColor,
                        fontSize: 45),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Accrued miles ",
                        style: Styles.headLinestyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        "6 November 2020  ",
                        style: Styles.headLinestyle4.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppLayotColumn(
                        bigText: "23 042",
                        smText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppLayotColumn(
                        bigText: "Airline CO",
                        smText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const MyLayoutbuilder(
                    section: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppLayotColumn(
                        bigText: "24",
                        smText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppLayotColumn(
                        bigText: "McDonald's",
                        smText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  const MyLayoutbuilder(
                    section: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppLayotColumn(
                        bigText: "54 302",
                        smText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppLayotColumn(
                        bigText: "Al baik",
                        smText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Center(
                  child: Text("How to get more miles",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500,
                      ))),
            )
          ]),
    );
  }
}