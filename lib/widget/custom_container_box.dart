import 'dart:developer';

import 'package:flutter/material.dart';

class CustomContainerBox extends StatefulWidget {
  final Color color;
  final String textName;
  const CustomContainerBox({
    Key? key,
    required this.color,
    required this.textName,
  }) : super(key: key);

  @override
  State<CustomContainerBox> createState() => _CustomContainerBoxState();
}

class _CustomContainerBoxState extends State<CustomContainerBox>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Color boxColor;
  late String boxName;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    log("Box name is ${widget.textName}");
    boxColor = widget.color;
    boxName = widget.textName;
  }

  @override
  void didUpdateWidget(covariant CustomContainerBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.color != widget.color) {
      updateWidgetWithAnimation();
    }
  }

  updateWidgetWithAnimation() {
    final firstColor = boxColor;
    final Animation<double> animationCurve =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    final tween = Tween<double>(begin: 0.0, end: 1.0).animate(animationCurve);
    tween.addListener(() {
      setState(() {
        boxColor = Color.lerp(firstColor, widget.color, tween.value)!;
      });
    });
    animationController.reset();
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: boxColor,
      child: Center(
        child: Text(widget.textName),
      ),
    );
  }
}
