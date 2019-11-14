import 'dart:math';

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

bool doOverlap(Map l1, Map r1, Map l2, Map r2) {
  if (l1['x'] > r2['x'] || l2['x'] > r1['x']) return false; //If rect is on left side
  return (l1['y'] < r2['y'] || l2['y'] < r1['y']); // If one rectangle is above other
}

int overlappingRectangles(List one, List two){
  print(overlappingArea(one[0], one[1], two[0], two[1]))  ;
  //return(doOverlap(one[0], one[1], two[0], two[1]));
  return (overlappingArea(one[0], one[1], two[0], two[1]));
}

int overlappingArea(Map l1, Map r1, Map l2, Map r2) {
  // Area of 1st Rectangle
  int area1 = (l1['x'] - r1['x']).abs() *
      (l1['y'] - r1['y']).abs();

  // Area of 2nd Rectangle
  int area2 = (l2['x'] - r2['x']).abs() *
      (l2['y'] - r2['y']).abs();

  List <int> rightx= [r1['x'], r2['x']];
  List <int> leftx= [l1['x'], l2['x']];
  List <int> righty= [r1['y'], r2['y']];
  List <int> lefty= [l1['y'], l2['y']];

  int areaI = (rightx.reduce(min) - leftx.reduce(min)) *
              (righty.reduce(min) - lefty.reduce(min));

  if (areaI < 0){
    return 0;
  }
  else {
    return (areaI / 2).round();
  }
}

main() {
  print(isPandigital(98140723568910));
  print(overlappingRectangles(
    [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],
    [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]
    )
  );
  print(overlappingRectangles(
      [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],
      [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]
  )
  );
  
}
