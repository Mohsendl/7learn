abstract class Person {
  String _name = '';

  String _countryCode = '';

  String _phoneNumber = '';

  String _address = '';

  String get name => _name;

  String get countryCode => _countryCode;

  String get phoneNumber => _phoneNumber;

  String get address => _address;

  void printPersonalInformations(
      String name, String countryCode, String phoneNumber, String address);

  void woring();
}

class Teacher extends Person with Units{
  final Certificate lastDegree;

  final int salary;

  Teacher(this.lastDegree, this.salary);

  @override
  void woring() {
    print('Teacher theching');
  }

  @override
  void printPersonalInformations(
      String name, String countryCode, String phoneNumber, String address) {
    _name = name;
    _countryCode = countryCode;
    _phoneNumber = phoneNumber;
    _address = address;
  }
}

class Student extends Person with Units{
  int _studentId;

  final String course;

  int get studentId => _studentId;

  Student.english()
      : course = 'English literature',
        _studentId = 0;

  @override
  void printPersonalInformations(
      String name, String countryCode, String phoneNumber, String address) {
    _name = name;
    _countryCode = countryCode;
    _phoneNumber = phoneNumber;
    _address = address;
  }

  @override
  void woring() {
    print('Student studing');
  }
}

enum Certificate {
  master,

  bachelor,

  diploma,

  phd
}





mixin Units{
  List<String> _units=[];




  List<String> get getUnits=>_units;


  set setUnits(List<String> units)=>this._units=units;

}