import 'package:either_dart/either.dart';

void main(List<String> args) {
  Either<String, int> leftFailure = Left('Error');
  Either<String, int> rightuccess = Right(10);

  final foldFailure = leftFailure.fold((l) {
    print('Failed');
    return 1;
  }, (r) {
    print('Success');
    return 2;
  });

  final foldSuccess = rightuccess.fold((l) {
    print('Failed');
    return 3;
  }, (r) {
    print('Success');
    return 4;
  });
  print('foldFailure: $foldFailure');
  print('foldSuccess: $foldSuccess');
}
