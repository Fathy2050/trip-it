import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/discover_card.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          body:
          Center(child: DiscoverCard(),),
        ),
      );
  }
}


