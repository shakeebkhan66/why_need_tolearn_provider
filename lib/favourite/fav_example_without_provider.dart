import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:why_need_tolearn_provider/favourite/favourite_provider.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({Key? key}) : super(key: key);

  @override
  _FavouriteExampleState createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {

  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "Favourite Example",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    selectedIndex.add(index);
                    setState(() {});
                  },
                  title: Text(
                    "Favourite Index is  : " + index.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    selectedIndex.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border_outlined
                  )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
