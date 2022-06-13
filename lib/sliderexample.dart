import 'package:flutter/material.dart';


class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  double value = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
              "Slider Example",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              ),
            )
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
              max: 1,
              value: value,
              onChanged: (val){
                value = val;
                setState(() {});
              }
          ),
          SizedBox(height: 15.0,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.teal.withOpacity(value),
                  child: Center(
                      child: Text(
                        "It's me Teal",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.deepOrange.withOpacity(value),
                  child: Center(
                    child: Text(
                      "It's me Deep Orange",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
