import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:why_need_tolearn_provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  _CountExampleState createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    var shaki = Provider.of<CountProvider>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
          "Count Example",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CountProvider>(builder: (context, value, child){
           return Text(value.count.toString());
    })),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: (){
          shaki.setCount();
        },
        child: Icon(Icons.add),
      )
    );
  }
}
