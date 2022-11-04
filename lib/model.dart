class Book {
  int? pagesCount;
  String? authorName;
  Book([this.authorName, this.pagesCount]);
}

class Api {
  dynamic country;
  String? name;

  Api({this.country, this.name});

  factory Api.fromJson(Map json) {
    return Api(country: json['country'], name: json['name']);
  }
}

class Person {
  String? fistName;

  doSome() {
    print('Live');
  }
}

class Worker extends Person {
  @override
  doSome() {
    print('Working');
  }
}

abstract class Computer {
  getModel() {
    print('Nitro 5');
  }

  printInfo() {}
}

class Hp with Computer, Hasvideocard{
   @override
  getModel() {
    print('Core I5-12500');
  }

  @override
  printInfo() {
    print( 'HP Victus');
  }
}

mixin Hasvideocard {
  getValume() {
    print(2);
  }
}
