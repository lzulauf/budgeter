//import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:di/annotations.dart';
import 'dart:html';

import "category.dart";

@Injectable()
//@Controller()
//    selector: '[budget-table]',
//    publishAs: 'ctrl')
class BudgetController {
  List<Category> categories;
  
  BudgetController() {
    this.categories = [
    new Category('Activities')..loadTransactions(),
    new Category('Food')..loadTransactions()
                               ];
  }
}

void showAddtransactionRow(MouseEvent event) {
  querySelector("#add-transaction-row")
    ..hidden = false;
  querySelector("#add-transaction-button")
    ..hidden = true;
}

void main() {
  querySelector("#add-transaction-button")
    ..onClick.listen(showAddtransactionRow);
  applicationFactory()..rootContextType(BudgetController)..run();
//  applicationFactory()..addModule(new MyAppModule())..run();
}
