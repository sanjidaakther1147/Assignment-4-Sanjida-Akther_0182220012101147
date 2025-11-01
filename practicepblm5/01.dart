import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('Sanjida');
  print('Name written to hello.txt');
}
