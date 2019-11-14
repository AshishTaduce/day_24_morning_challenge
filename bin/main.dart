import 'dart:core' as prefix1;
import 'dart:core';
import 'dart:math';

import 'dart:math' as prefix0;

// Challenge 1
// Write test cases for the given challenges

// Challenge 2
// Pandigital Numbers
// A pandigital number contains all digits (0-9) at least once. Write a function
// that takes an integer, returning true if the integer is pandigital, and false otherwise.
//  Examples
//  isPandigital(98140723568910) ➞ true

bool isPandigital(int num){
  return(num.toString().split('').toSet().toList().length == 10);
}

// Challenge 3
// Area of Overlapping Rectangles
// Create a function that returns the area of the overlap between two rectangles.
// The function will receive two rectangles, each with the coordinates of two of
// its opposite angles.
//
// Examples
// overlappingRectangles(
//    [{ x: 2, y: 1 }, { x: 5, y: 5 }],
//    [{ x: 3, y: 2 }, { x: 5, y: 7 }]
//  ) ➞ 6

int overlappingRectangles(List one, List two){
  return (overlappingArea(one[0], one[1], two[0], two[1]));
}

int overlappingArea(Map r11, Map r12, Map r21, Map r22) {

  int r1x1 = r11['x'];
  int r1y1 = r11['y'];
  int r1x2= r12['x'];
  int r1y2= r12['y'];
  int r2x1= r21['x'];
  int r2y1= r21['y'];
  int r2x2= r22['x'];
  int r2y2= r22['y'];

  Point r1p1 = Point(r1x1, r1y1);
  Point r1p2 = Point(r1x2, r1y2);
  Point r2p1 = Point(r2x1, r2y1);
  Point r2p2 = Point(r2x2, r2y2);
  Rectangle one = Rectangle.fromPoints(r1p2, r1p1);
  Rectangle two = Rectangle.fromPoints(r2p1, r2p2);
  Rectangle inter  = intersect(one, two);
  print('${one.topLeft} ${one.topRight} ${one.bottomRight} ${one.bottomLeft}');
  print('${two.top} ${two.bottom} ${two.right} ${two.left}');
  print("${inter.top} ${inter.bottom} ${inter.right} ${inter.left} ");
  return inter.width * inter.height;
}

Rectangle intersect(Rectangle a, Rectangle b) {
final left = max(a.left, b.left);
final right = min(a.right, b.right);
final top = max(a.top, b.top);
final bottom = min(a.bottom, b.bottom);

final width = max(0, right - left);
final height = max(0, bottom - top);

return Rectangle(left, top, width, height);
}

main() {
  print(isPandigital(98140723568910));

  print(overlappingRectangles(
      [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],
      [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]
  )
  );
  
}
