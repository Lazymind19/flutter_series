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

class _CustomContainerBoxState extends State<CustomContainerBox> {
  @override
  void initState() {
    super.initState();
    log("Box name is ${widget.textName}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: widget.color,
      child: Center(
        child: Text(widget.textName),
      ),
    );
  }
}
