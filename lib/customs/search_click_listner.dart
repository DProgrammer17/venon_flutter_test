import 'package:flutter/material.dart';
final seachClicked = ValueNotifier<int>(0);

class SearchListner extends ChangeNotifier{
   var _searchBarClicked = false;
  get searchBarClicked => _searchBarClicked;
  set searchBarClicked(var val) {
    _searchBarClicked = val;
    notifyListeners();
  }
  //
  //
  // void toggleSearch(){
  //   searchBarClicked = !searchBarClicked;
  //   notifyListeners();
  // }
  }