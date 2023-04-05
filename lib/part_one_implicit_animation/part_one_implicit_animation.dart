import 'dart:developer';

import 'package:flutter/material.dart';

import '../widget/custom_container_box.dart';

class PartOneImplicitAnimation extends StatefulWidget {
  const PartOneImplicitAnimation({super.key});

  @override
  State<PartOneImplicitAnimation> createState() =>
      _PartOneImplicitAnimationState();
}

class _PartOneImplicitAnimationState extends State<PartOneImplicitAnimation> {
  @override
  final colorList = [Colors.red, Colors.blue];
  final textList = ["Flutter", "Developer"];
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit Animation"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CustomContainerBox(
                color: colorList[index], textName: textList[index]),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  log("I am clicked");
                  setState(() {
                    index = index == 1 ? 0 : 1;
                    log("index is $index");
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
