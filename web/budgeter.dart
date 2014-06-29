import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';

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

void main() {
  var mydata = ['a', 'b', 'c'];
  applicationFactory()..addModule(new MyAppModule())..run();
}
