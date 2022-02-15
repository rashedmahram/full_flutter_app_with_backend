import 'dart:math';


void main() {
  DateTime birthday=DateTime(1991);
  Spacecraft myclass=Spacecraft("Rasheed",birthday);
  myclass.describe();




  // var name = 'Voyager I';
  // var year = 1977;
  // var antennaDiameter = 3.7;
  // var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  // var image = {
  //   'tags': ['saturn'],
  //   'url': '//path/to/saturn.jpg'
  // };


  // if (year >= 2001) {
  //   print('21st century');
  // } else if (year >= 1901) {
  //   print('20th century');
  // }

  // for (final object in flybyObjects) {
  //   print(object);
  // }

  // for (int month = 1; month <= 12; month++) {
  //   print(month);
  // }

  // while (year < 2016) {
  //   year += 1;
  //   // print(year);
  // }

  // var result = fibonacci(8);
  // print(result);

  //
  ///
  ///
  ///
  ///
  ///
  ///
  /*
  
   */
  

  // print(pow(3, 2)*pow(3, 2));
  // print(sqrt(2));
  // print(pi);

  // var leftTop = const Point(20, 50);

  // var rightBottom = const Point(300, 600);
  // var rectangle = Rectangle.fromPoints(leftTop, rightBottom);
  // print(rectangle.left); // 20
  // print(rectangle.top); // 50
  // print(rectangle.right); // 300
  // print(rectangle.bottom); // 600

  // print(Random().nextInt(200));
  // print(Random().nextDouble());
  // print(Random().nextBool());

  // double circle1=circum(4);
  // double circle2=circum(2);
  // double circle3=circum(1.2);

  // double area1=area(2);

  // List numbers=[1,52,33,24,15,6,7];

// for (var i = 0; i < numbers.length; i++) {
//   print("counter: $i");
//   print("item :${numbers[i]}");
//   print("......");
// }

  // if (numbers.first!=2) {
  //     print("right");
  // } else {
  //    print("wrong");
  // }

  // numbers.first==2 ? print("yes"):print("no");

  // ==
  // >=
  // <=
  // !=
  // <
  // >
// اكتب برنامج يحسب محيط الدائرة
}

// function
double circum(double r) {
  double pi = 3.14;
  double result = 2 * pi * r;
  return result;
}

// function _double
double area(double r) {
  double pi = 3.14;
  return pi * r * r;
}

// function
double rectangleArea(double x, double y) {
  double result = 0.5 * x * y;
  return result;
}


int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
// funcion
// int func(input){result/return}

// class classname{ methods/functions}
class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
