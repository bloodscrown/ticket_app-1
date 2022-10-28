import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../uitles/app_layout.dart';

class AppTicketTap extends StatelessWidget {
  final String firstTap;
  final String secondTap;
  const AppTicketTap(
      {super.key, required this.firstTap, required this.secondTap});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6Fd)),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              width: size.width * .44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(firstTap)),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              child: Center(child: Text(secondTap)),
            )
          ],
        ),
      ),
    );
  }
}
