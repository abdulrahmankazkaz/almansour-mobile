class AvailableTime {
  final String time;
  final bool isAvailable;

  AvailableTime({required this.time, required this.isAvailable});

  @override
  String toString() {
    return 'AvailableTime{time: $time, isAvailable: $isAvailable}';
  }
}
