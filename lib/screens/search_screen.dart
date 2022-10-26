import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchSceen extends StatelessWidget {
  const SearchSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        const Gap(40),
        Text(
          "what are\nyou looking for?",
          style: Styles.headLinestyle1.copyWith(fontSize: 35),
        ),
        const Gap(20),
        FittedBox(
          child: Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white),
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Center(child: Text("airline tickets")),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.transparent),
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Center(child: Text("Hotels")),
                )
              ],
            ),
            padding: EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFF4F6Fd)),
          ),
        ),
        Gap(25),
        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              const Icon(
                Icons.flight_takeoff_rounded,
                color: Color(0xFFBFC2DF),
              ),
              Gap(AppLayout.getWidth(10)),
              Text(
                "Departure",
                style: Styles.textStyle,
              )
            ],
          ),
        )
      ],
    ));
  }
}
