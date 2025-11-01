import 'dart:io';

void main() {
  File source = File('hello.txt');
  File destination = File('hello_copy.txt');
  
  source.copySync(destination.path);
  print('File copied to hello_copy.txt');
}
