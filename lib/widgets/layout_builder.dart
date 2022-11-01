import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLayoutbuilder extends StatelessWidget {
  final double width;
  final int section;
  final bool? isColor;
  const MyLayoutbuilder(
      {super.key, this.isColor, required this.section, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / section).floor(),
              (index) => SizedBox(
                    height: 1,
                    width: width,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color:
                          isColor == null ? Colors.white : Colors.grey.shade300,
                    )),
                  )),
        );
      },
    );
  }
}
