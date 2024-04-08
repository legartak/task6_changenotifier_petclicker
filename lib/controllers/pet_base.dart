import 'package:flutter/foundation.dart';

class PetBase with ChangeNotifier{
  int _incomeByTap = 1;
  int _balance = 0;
  int _cats = 0;
  int _dogs = 0;

  int get balance => _balance;
  int get cats => _cats;
  int get dogs => _dogs;

  //Currently I have only 2 types of pets which user can buy to increase his income:
  //dogs and cats. And I will store them as separate variables and they'll have
  //separate methods to buy
  //But better way will be storing as array 'pets' to provide expandability
  //Don't blame me for this code

  earnMoney() {
    _balance += _incomeByTap;
    notifyListeners();
  }

  // Cat will cost 5 coins and add extra 1 coin to income
  buyCat() {
    _incomeByTap += 1;
    _balance -= 5;
    _cats += 1;
    notifyListeners();
  }

  // Dog's cost is 10 coins and they're adding 3 coins to daily income
  buyDog() {
    _incomeByTap += 3;
    _balance -= 10;
    _dogs += 1;
    notifyListeners();
  }
}