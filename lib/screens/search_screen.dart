import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:first_app/widgets/doubel_text-widget.dart';
import 'package:first_app/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchSceen extends StatelessWidget {
  const SearchSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
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
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent),
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    child: Center(child: Text("Hotels")),
                  )
                ],
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: Color(0xFFF4F6Fd)),
            ),
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
          const DoubelText(bigText: "Upcoming Flights", smallText: "View all")
        ],
      ),
    );
  }
}
