class Student {
  // data == field == attributes
  //public / private / protect not found in drat
  //name -> to be public
  //_name -> to be private

  late int id;
  late String _name;

  // => setter and getter

  void setNameStudent(String studentName) {
    this._name = studentName;
  }

  String getNameOfStudent() {
    return this._name;
  }

  //*  syntax sugar for setter & getter
  //& Properties
  set name(String studentName) => this._name = studentName;
  String get name => this._name;
}
