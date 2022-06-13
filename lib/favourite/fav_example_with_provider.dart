import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:why_need_tolearn_provider/favourite/fav_example_without_provider.dart';
import 'package:why_need_tolearn_provider/favourite/selected_favourite_item.dart';

import 'favourite_provider.dart';

class FavouriteExampleProvider extends StatefulWidget {
  const FavouriteExampleProvider({Key? key}) : super(key: key);

  @override
  _FavouriteExampleProviderState createState() => _FavouriteExampleProviderState();
}

class _FavouriteExampleProviderState extends State<FavouriteExampleProvider> {
  @override
  Widget build(BuildContext context) {
    final myFavList = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
            "Favourite Example with Provider",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white
          ),
        ),
        leading: IconButton(
          onPressed: (){
            // myFavList.myfunction();
            Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedFavItem()));
          },
          icon: Icon(Icons.nat),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
                return Consumer<FavouriteProvider>(
                  builder: (context, value, child){
                    return ListTile(
                      onTap: (){
                        if (value.selectedItem.contains(index)){
                          value.removeItem(index);
                        }else{
                          value.addItem(index);
                        }
                        // myFavList.addItem(index);
                      },
                      title: Text(
                        "My Favourite Index is : " + index.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                          value.selectedItem.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_rounded
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
