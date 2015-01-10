class Transaction {
  String id;
  String date;
  String payee;
  String description;
  int inflow; // inflow in cents. outflows are just negative values.
  
  Transaction(this.id, this.date, this.payee, this.description, this.inflow);
  
  String amount() {
    return (this.inflow/100).toStringAsFixed(2);
  }
}