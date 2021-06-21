class Transaction {
  final String id;
  final String title;
  final DateTime date;
  final double value;

  Transaction(
      {required this.id,
      required this.title,
      required this.value,
      required this.date});
}
