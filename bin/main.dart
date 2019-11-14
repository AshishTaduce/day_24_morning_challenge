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

int areaRectangle(List one, List two){
  int area1 = (one[0] - two [0]).abs() *
      (one[1] - two [1]).abs();
  return area1;
}

int minPoint(int a, int b){
  return a == b ? a : min(a, b);
}

bool doOverlap(Map l1, Map r1, Map l2, Map r2)
{

  //if (l1['x'] > r2['x'] || l2['x'] > r1['x'])  return false; //If rect is on left side
  //if (l1['y'] < r2['y'] || l2['y'] < r1['y'])  return false; //If they are inside each other

  return ((l1['x'] > r2['x'] || l2['x'] > r1['x']) || (l1['y'] < r2['y'] || l2['y'] < r1['y']));
}


bool overlappingRectangles(List one, List two){
    return(doOverlap(one[0], one[1], two[0], two[1]));
}

main() {
  print(isPandigital(98140723568910));
  print(
      overlappingRectangles(
    [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],
    [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]
  )
  );
  
}
