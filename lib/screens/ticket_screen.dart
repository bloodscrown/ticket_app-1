import 'package:first_app/screens/ticket_view.dart';
import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:first_app/uitles/list_tikcet_map.dart';
import 'package:first_app/widgets/text_tap.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLinestyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTap(firstTap: "Upcoming", secondTap: "Pervious"),
              Gap(AppLayout.getHeight(25)),
              FittedBox(
                child: Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
