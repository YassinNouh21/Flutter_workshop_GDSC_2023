import 'dart:async';

void main(List<String> args) async {
  // Future.delayed(duration, function)
  Future.delayed(
    Duration(seconds: 1),
    () => print('Delayed'),
  );
  Future<int>.value(2)
      .then((value) => print(value))
      // what the different between onError / catchError
      .onError((error, stackTrace) => print(error))
      // = on Exception catch (error) syntax
      .catchError((error) => print(error));
  // = catch (error)

  // async vs async* - await

  // another way to handle Future by using try - catch
  // make the Function (async)
  try {
    final future = await Future<String>.delayed(
      Duration(seconds: 1),
      () => 'The typeData you\'ve chosen after (Future)',
    );
    print(future);
  } catch (e) {
    print(e);
  }
}
