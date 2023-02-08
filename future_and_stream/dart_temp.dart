
Future<String> doSomething() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Returning the data';
  });
}

Future<List<String>> doSomething2() {
  return Future.delayed(Duration(seconds: 3), () {
    return ['Value 1', 'Value 2', 'Value 3'];
  });
}

Future<List<int>> doSomething3() {
  return Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw Exception('Some error');
    }
    return [1, 2, 3];
  });
}

Future<List<String>> getValues() {
  return Future.delayed(Duration(seconds: 3), () {
    return ['Value 1', 'Value 2', 'Value 3'];
  });
}
