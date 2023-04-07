import 'package:flutter/material.dart';
import 'package:mangalyam_360/model/vendorsdata.dart';


class cartprovider extends ChangeNotifier {
  List<VendorsData> _items = [];
  double _totalPrice = 0.0;

  void add(VendorsData item) {
    _items.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void remove(VendorsData item) {
    _totalPrice -= item.price;
    _items.remove(item);
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<VendorsData> get basketItems {
    return _items;
  }
}
