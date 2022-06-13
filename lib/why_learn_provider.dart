import 'dart:async';

import 'package:flutter/material.dart';


class WhyLearnProvider extends StatefulWidget {
  const WhyLearnProvider({Key? key}) : super(key: key);

  @override
  _WhyLearnProviderState createState() => _WhyLearnProviderState();
}

class _WhyLearnProviderState extends State<WhyLearnProvider> {

  int count = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 2), (timer) {
      count++;
      print(count);
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Why Learn Provider", style: TextStyle(color: Colors.white, fontSize: 18))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                DateTime.now().hour.toString()+ ":" +
                  DateTime.now().minute.toString()+ ":" +
                  DateTime.now().second.toString(),
                style: TextStyle(fontSize: 26),
              ),
            ),
          )
        ],
      ),
    );
  }
}
