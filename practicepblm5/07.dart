import 'dart:io';

void main() {
  File file = File('students.csv');
  

  List<String> students = [
    'Name,Age,Address',
    'Sanjida,22,Sylhet',
    'Tasnia,21,Dhaka',
    'Nafisa,23,Chittagong'
  ];
  
  file.writeAsStringSync(students.join('\n'));
  print('Student data written to students.csv');

  String content = file.readAsStringSync();
  print('\nReading from students.csv:\n$content');
}
