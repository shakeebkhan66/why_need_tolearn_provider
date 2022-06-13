import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:why_need_tolearn_provider/slider_provider.dart';


class SliderExampleProvider extends StatefulWidget {
  const SliderExampleProvider({Key? key}) : super(key: key);

  @override
  _SliderExampleProviderState createState() => _SliderExampleProviderState();
}

class _SliderExampleProviderState extends State<SliderExampleProvider> {
  @override
  Widget build(BuildContext context) {
    final mySlider = Provider.of<SliderProvider>(context, listen: false);
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
          Consumer<SliderProvider>(
            builder: (context, value, child){
              return  Slider(
                  min: 0,
                  max: 1,
                  value: mySlider.value,
                  onChanged: (val){
                    mySlider.setSliderVal(val);
                  }
              );
            },
          ),
          SizedBox(height: 15.0,),

          Consumer<SliderProvider>(
            builder: (context, value, child){
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.teal.withOpacity(value.value),
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
                      color: Colors.deepOrange.withOpacity(value.value),
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
              );
            },
          )
        ],
      ),
    );
  }
}
