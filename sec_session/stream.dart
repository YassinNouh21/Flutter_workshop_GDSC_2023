void main(List<String> args) async {
  final stream1 = Stream.periodic(Duration(seconds: 2), (a) => a * 3);
  final eventNumbers = stream1.where((event) => event % 2 == 0);
  eventNumbers.listen((event) {
    print(event);
  });
  // onData
  // onDone
  // onError
  // cancel
  // yield vs return

  // another way to handle Stream by using try - catch
  // make the Function (async)
  try {
    await for (var element in stream1) {
      if (element > 10) break;
      print(element);
    }
  } catch (e) {
    print(e);
  }
}
