import 'package:dartz/dartz.dart';
Either<String, int> parse(String input) {
  try {
    return Right(int.parse(input));
  } on FormatException {
    return Left('Not an integer');
  }
}

void main() {
  
}