void main(List<String> args) {
  // Use the where method to filter a List of integers and only keep values greater than 3.
  List<int> numbers2 = [1, 2, 3, 4, 5];
  List<int> filteredNumbers;
  // output should be [4, 5]

  // Use the where method to filter a List of strings and only keep values that start with the letter "A".
  List<String> names2 = [
    'Ahmed',
    'Youssef',
    'Sherif',
    'Tawfik',
    'Mohamed',
    'Ali'
  ];
  List<String> filteredNames;
  //output should be ['Ahmed', 'Ali']

  // Use the where method to filter a List of strings and only keep values that start with the letter "A" and end with the letter "d".
  List<String> names3 = [
    'Ahmed',
    'Youssef',
    'Sherif',
    'Tawfik',
    'Mohamed',
    'Ali'
  ];
  List<String> filteredNames2;
  //output should be ['Ahmed']

  // DONT USE FOR LOOP  find the first number that is greater than 4 in the list
  List<int> numbers3 = [1, 2, 3, 5, 9, 10];
  int firstNumberGreaterThan4;
  // output should be 5

  // MORE ADVANCED
  // Use the where method to find all elements in a List of maps that have a value of "John" for the key "name"
  List<Map<String, String>> people = [
    {'name': 'John', 'age': '30'},
    {'name': 'Jane', 'age': '25'},
    {'name': 'Jim', 'age': '35'}
  ];
  List<Map<String, String>> johns;
  // output should be [{'name': 'John', 'age': '30'}]
}
