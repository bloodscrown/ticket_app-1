import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../uitles/app_layout.dart';
import '../uitles/app_style.dart';
import 'package:gap/gap.dart';

class AppLayotColumn extends StatelessWidget {
  final bool? isColor;
  final CrossAxisAlignment alignment;
  final String bigText;
  final String smText;
  const AppLayotColumn(
      {super.key,
      required this.bigText,
      required this.smText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          /*style: isColor == null
                                ? Styles.headLinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinestyle3, */
          bigText,
          style: isColor == null
              ? Styles.headLinestyle3.copyWith(
                  color: Colors.white,
                )
              : Styles.headLinestyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          smText,
          style: isColor == null
              ? Styles.headLinestyle4.copyWith(color: Colors.white)
              : Styles.headLinestyle4,
        ),
      ],
    );
  }
}
