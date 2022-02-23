import 'package:flutter/cupertino.dart';

import 'package:signin_register_form/providers/basket_providers/widget/product.dart';

class BasketProvider with ChangeNotifier {
  final List<Product> _listProduct = [];
  List get listProduct => _listProduct;
  List<int> amount = [];
  bool _isEmpty = false;
  bool get isEmpty => _isEmpty;
  int get listProductLength => _listProduct.length;
  int _chosenIndex = 0;
  int get chosenIndex => _chosenIndex;
  double _totalAmount = 0;
  double get totalAmount => _totalAmount;
  void incrementAmount(int index) {
    amount[index]++;
    notifyListeners();
  }

  void toggleIsEmpty() {
    _isEmpty = !_isEmpty;
    notifyListeners();
  }

  void decrementAmount(int index) {
    amount[index]--;
    notifyListeners();

  }

  void clearBasket() {
    _listProduct.clear();
    notifyListeners();
  }

  void setIndex(int index) {
    _chosenIndex = index;
    notifyListeners();
  }

  void addProduct(Product product) {
    _listProduct.add(product);
    print("The product has been added");
    amount.add(0);
    notifyListeners();
    calculateTotal();
  }

  void calculateTotal() {
    for (int i = 0; i < _listProduct.length; i++) {
       _totalAmount += _listProduct[i].price;
    }
    notifyListeners();
  }
}
