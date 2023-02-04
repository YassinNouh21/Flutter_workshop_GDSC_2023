import 'dart:io';

class RegExpPatternsManager {
  static final RegExp egyptMobileNumberPattern = RegExp(r"^01[0125][0-9]{8}");
}

bool isMobileNumberValid(String mobileNumber) {
  return RegExpPatternsManager.egyptMobileNumberPattern.hasMatch(mobileNumber);
}

void main(List<String> args) {
  print("Enter your Number Phone");
  String? yourNumberPhone = stdin.readLineSync();

  if(isMobileNumberValid(yourNumberPhone??'')){
    print('Validated');
  }else{
    print('Didn\'t validate');
  }
}