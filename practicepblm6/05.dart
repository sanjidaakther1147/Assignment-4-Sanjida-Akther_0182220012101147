class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;


  void set id(int id) => _id = id;
  void set brand(String brand) => _brand = brand;
  void set color(String color) => _color = color;
  void set price(double price) => _price = price;


  int get id => _id!;
  String get brand => _brand!;
  String get color => _color!;
  double get price => _price!;

  void display() {
    print('ID: $_id, Brand: $_brand, Color: $_color, Price: $_price');
  }
}

void main() {
  Camera c1 = Camera();
  c1..id = 1..brand = 'Canon'..color = 'Black'..price = 45000;

  Camera c2 = Camera();
  c2..id = 2..brand = 'Nikon'..color = 'Silver'..price = 55000;

  Camera c3 = Camera();
  c3..id = 3..brand = 'Sony'..color = 'Red'..price = 60000;

  c1.display();
  c2.display();
  c3.display();
}
