import 'dart:io';

// Define an interface for shapes
abstract class Shape {
  double area();
  double perimeter();
}

// Base class for shapes
class GenericShape {
  // Common properties and methods
}

// Rectangle class implementing Shape interface
class Rectangle extends GenericShape implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return 'Rectangle: width = $width, height = $height';
  }
}

// Circle class implementing Shape interface
class Circle extends GenericShape implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  String toString() {
    return 'Circle: radius = $radius';
  }
}

// Method to create a Rectangle instance by prompting the user for input
Rectangle createRectangleFromUserInput() {
  print('Enter the width of the rectangle:');
  double width = double.parse(stdin.readLineSync()!);

  print('Enter the height of the rectangle:');
  double height = double.parse(stdin.readLineSync()!);

  return Rectangle(width, height);
}

// Method to create a Circle instance by prompting the user for input
Circle createCircleFromUserInput() {
  print('Enter the radius of the circle:');
  double radius = double.parse(stdin.readLineSync()!);

  return Circle(radius);
}

void main() {
  // Create instances of shapes based on user input
  var rectangle = createRectangleFromUserInput();
  var circle = createCircleFromUserInput();

  // Calculate and print area and perimeter
  print('Area of rectangle: ${rectangle.area()}');
  print('Perimeter of rectangle: ${rectangle.perimeter()}');
  print('Area of circle: ${circle.area()}');
  print('Perimeter of circle: ${circle.perimeter()}');
}
