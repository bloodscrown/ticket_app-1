import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
import 'package:first_app/widgets/column-layout.dart';
import 'package:first_app/widgets/layout_builder.dart';
import 'package:first_app/widgets/tick_contanier.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * .97,
      height: AppLayout.getHeight(167),
      /*
      
      this contanaier showing blue part of ticket.

      */
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: isColor == null
                            ? Styles.headLinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLinestyle3,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ThickContanier(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                                height: 24,
                                child: MyLayoutbuilder(
                                  section: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.6,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0XFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContanier(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        ticket["to"]["code"],
                        style: isColor == null
                            ? Styles.headLinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLinestyle3,
                      )
                    ],
                  ),

                  //airplane design compeleted here
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["from"]["name"],
                          textAlign: TextAlign.start,
                          style: isColor == null
                              ? Styles.headLinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLinestyle4,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["flying_time"],
                          textAlign: TextAlign.center,
                          style: isColor == null
                              ? Styles.headLinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLinestyle4,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLinestyle4,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            /*
            orange part of ticket
             */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: const [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: MyLayoutbuilder(
                            section: 15,
                          ))),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            /*
            rest part of orange part of ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  bottom: 16, top: 10, right: 16, left: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLayotColumn(
                        bigText: ticket["date"],
                        smText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppLayotColumn(
                        bigText: ticket["departure_time"],
                        smText: "Depurture Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppLayotColumn(
                        bigText: ticket["number"].toString(),
                        smText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
