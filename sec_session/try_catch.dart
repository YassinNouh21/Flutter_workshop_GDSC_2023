import 'dart:io';

void main(List<String> args) {
  int x = 4;
  int a = 0;
  int result;
  // طريقة عشان اخلي الايرور بدل ما يبوظلي البروجيكت، اخليه يطبعلي ان فيه مشكلة

  // try - catch - on - finally
  try {
    result = x ~/ a;
  } on UnsupportedError catch (error) {
    // هنا بحدد نوع الايرور دا لو جه المفروض الكومبايلر يعمل اية
    print('you cant divide by zero!: $error');
  } finally {
    print('reach to finally code');
  }

  // FormatException
  try {
    if (x != 10) {
      throw FormatException();
    }
  } on FormatException catch (error) {
    print('FormatException: $error');
  }
  // Making custom Exception

  String ticketNumber = "342531231234";
  try {
    if (ticketNumber[0] != '1') {
      throw CustomException();
    }
  } on CustomException catch (e) {
    print(e.errorString());
  } on StartWith1 catch (e) {
    print(e.errorMessage());
  }
  // function inside the custom exception
  try {
    StartWith1.testNumber(a);
    int divide = x ~/ a;
  } on StartWith1 catch (e) {
    print(e.errorMessage());
  }
}

class CustomException implements Exception {
  String errorString() => 'Error Custom Exception.';
}

class StartWith1 implements Exception {
  String errorMessage() => "The ticket number must start with 1.";

  static void testNumber(int number) {
    if (number == 0) {
      throw StartWith1();
    }
  }
}
