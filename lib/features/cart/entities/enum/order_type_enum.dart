enum OrderType {
  sparePart(1),
  appointment(2),
  mobileService(3),
  quickService(4);

  final int id;
  const OrderType(this.id);

  static OrderType? fromId(int id) {
    return OrderType.values.firstWhere(
          (e) => e.id == id,
      orElse: () => throw ArgumentError('Invalid OrderType id: $id'),
    );
  }
}