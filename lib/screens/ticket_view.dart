import 'package:first_app/uitles/app_layout.dart';
import 'package:first_app/uitles/app_style.dart';
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
      height: AppLayout.getHeight(200),
      /*
      
      this contanaier showing blue part of ticket.

      */
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Color(0xFF526799) : Colors.white,
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
                      const ThickContanier(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.6,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContanier(
                        isColor: true,
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
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            /*
            rest part blue part of ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  bottom: 16, top: 10, right: 16, left: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket["date"],
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket["departure_time"],
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          ),
                          const Gap(5),
                          Text(
                            "Depurture Time",
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket["number"].toString(),
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle4,
                          )
                        ],
                      )
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
