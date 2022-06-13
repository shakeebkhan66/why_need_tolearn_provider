import 'package:flutter/cupertino.dart';


class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;

  void addItem(int value){
    selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    selectedItem.remove(value);
    notifyListeners();
  }

  void myfunction(){
    print(selectedItem);
  }
}