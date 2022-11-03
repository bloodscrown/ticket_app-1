import 'package:first_app/screens/ticket_view.dart';
import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:first_app/uitles/list_tikcet_map.dart';
import 'package:first_app/widgets/column-layout.dart';
import 'package:first_app/widgets/layout_builder.dart';
import 'package:first_app/widgets/text_tap.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              const AppTicketTap(firstTap: "Upcoming", secondTap: "Pervious"),
              Gap(AppLayout.getHeight(25)),
              FittedBox(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(24.5)),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppLayotColumn(
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                            bigText: "Flutter DB",
                            smText: "Pasenger"),
                        AppLayotColumn(
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                            bigText: "5241 678932",
                            smText: "Passport"),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const MyLayoutbuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppLayotColumn(
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                            bigText: "436787 324321",
                            smText: "Number of E-ticket"),
                        AppLayotColumn(
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                            bigText: "E2BG4Y766",
                            smText: "booking code"),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const MyLayoutbuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 70,
                                ),
                                Text(
                                  " *** 2431",
                                  style: Styles.headLinestyle3,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment methode",
                              style: Styles.headLinestyle4,
                            )
                          ],
                        ),
                        const AppLayotColumn(
                          bigText: "\$299.99",
                          smText: "price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              /*barcode */
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                margin: EdgeInsets.only(
                    left: AppLayout.getWidth(24.5),
                    right: AppLayout.getWidth(24.5)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: "http://https/github.com/martinovov",
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              FittedBox(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
