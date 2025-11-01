class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> houses = [
    House(1, 'Green Villa', 2500000),
    House(2, 'Rose Cottage', 1800000),
    House(3, 'Hill View', 3200000),
  ];

  for (var h in houses) {
    print('ID: ${h.id}, Name: ${h.name}, Price: ${h.price}');
  }
}
