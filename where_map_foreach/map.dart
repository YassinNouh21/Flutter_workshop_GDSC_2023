void main(List<String> args) {
  // use map to convert every grade with A , B , C , D , F
  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};
  Map<String, String> gradesWithLetters = grades.map((key, value) {
    String v = 'F';
    if(value>=50)v = 'D';
    if(value>65)v = 'C';
    if(value>75)v = 'B';
    if(value>85)v = 'A';

    return MapEntry(key , v);
  } );
  // output should be {'Ahmed': 'C', 'Youssef': 'B', 'Sherif': 'A'}
  print(gradesWithLetters);
  

}
