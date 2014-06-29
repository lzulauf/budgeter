import 'dart:math' as math;

import "transaction.dart";

class Category {
  String name;
  Category parent;
  List<Transaction> loadedTransactions;

  Category(this.name);
  
  void setParent(Category parent) {
    this.parent = parent;
  }
  
  double getOutflow(var month) {
    return 10.0;
  }
  
  void loadTransactions() {
    this.loadedTransactions = [];
    math.Random rand = new math.Random();
    for (int i=0; i<10; ++i) {
      this.loadedTransactions.add(new Transaction(
          rand.nextInt(1<<32-1).toString(),
          '2014-06-27',
          'luke',
          'for stuff',
          32.00,
          0.00));
    }
  }
}