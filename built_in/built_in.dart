void main(List<String> args) {
  //! EASY
  // convert string to int
  String number = '10';
  int number2 = int.parse(number);
  // output should be 10

  // convert int to string
  int number3 = 10;
  String number4 = number3.toString();
  // output should be '10'

  // uppercase and lowercase a string
  String name = 'ahmed';
  String upperCaseName = name.toUpperCase();
  String lowerCaseName = name.toLowerCase();
  // output should be AHMED and ahmed

  // check if a string is empty or not
  String name2 = '';
  String name3 = 'ahmed';
  bool isEmpty = name2.isEmpty;
  bool isNotEmpty = name3.isNotEmpty;
  // output should be true and false

  // check if a string contains a substring
  String name4 = 'ahmed';
  String substring = 'med';
  bool contains = name4.contains(substring);
  // output should be true

  // check the type of a variable
  dynamic name5 = 'ahmed';
  int number5 = 10;
  bool isString = (name5.runtimeType == String);
  print(isString);
  bool isInt = (number5.runtimeType == int);
  print(isInt);
  // output should be true and false

  //! MEDIUM

  // convert map into Key- Value pairs in list without using for loop

  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};

  // convert map into Key- Value pairs in list without using for loop
  List<MapEntry<String, int>> entries = [];
  grades.forEach((key, value) {
    entries.add(MapEntry(key, value));
  });
  //print(entries);

  // convert this list into set
  List<int> numbers = [1, 2, 3, 4, 5, 1, 2, 3];
  Set<int> uniqueNumbers = numbers.toSet();
  //print(uniqueNumbers);

  // check if "Ahmed" exists in the map or not without using for loop
  Map<String, int> grades2 = {
    'Ahmed': 75,
    'Youssef': 82,
    'Sherif': 90,
    'Tawfik': 75,
    'Mohamed': 82,
    'Ali': 90
  };
  bool isAhmedExist = grades2.containsKey('Ahmed');
  //print(isAhmedExist);

  // check if "Ahmed" exists in the List or not without using for loop

  List<String> names = [
    'Ahmed',
    'Youssef',
    'Sherif',
    'Tawfik',
    'Mohamed',
    'Ali'
  ];

  bool isAhmedExistInList = names.contains('Ahmed');

  //! BONUS NULL SAFETY
  // Search for this "??" double question mark in the code and try to understand what it does
  // "https://jelenaaa.medium.com/what-are-in-dart-df1f11706dd6"
  // check if the name is null or not if it is null then return "John" else return the name
  String? namee;
  String defaultName = 'John Doe';
  String actualName;

  // check if the name is null or not if it is null then return "John" else return the name
  print(namee ?? "john");
}
