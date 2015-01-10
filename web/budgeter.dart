import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'dart:html';

import "category.dart";

@Controller(
    selector: '[budget-table]',
    publishAs: 'ctrl')
class BudgetController {
  List<Category> categories;
  
  BudgetController() {
    this.categories = [
    new Category('Activities')..loadTransactions(),
    new Category('Food')..loadTransactions()
                               ];
  }
}

class MyAppModule extends Module {
  MyAppModule() {
    type(BudgetController);
  }
}

void showAddtransactionRow(MouseEvent event) {
  querySelector("#add-transaction-row")
      ..hidden = true;
}

void main() {
  querySelector("#add-transaction-button")
    ..onClick.listen(showAddtransactionRow);
  applicationFactory()..addModule(new MyAppModule())..run();
}
