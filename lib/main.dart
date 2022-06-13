import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:why_need_tolearn_provider/count.dart';
import 'package:why_need_tolearn_provider/count_provider.dart';
import 'package:why_need_tolearn_provider/slider_example_provider.dart';
import 'package:why_need_tolearn_provider/slider_provider.dart';
import 'package:why_need_tolearn_provider/sliderexample.dart';
import 'package:why_need_tolearn_provider/why_learn_provider.dart';

import 'favourite/fav_example_with_provider.dart';
import 'favourite/fav_example_without_provider.dart';
import 'favourite/favourite_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        )
      ],
      child:  MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FavouriteExampleProvider()
      ),
    );
  }
}