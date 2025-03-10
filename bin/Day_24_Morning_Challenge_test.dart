import 'main.dart';
import 'package:test/test.dart';

void main() {
  test('isPandigital', () {
    expect(isPandigital(98140723568910), true);
  });

  test('Rect test 1', (){
    expect(overlappingRectangles([{ 'x': 5, 'y': 0 }, { 'x': 0, 'y': 10}],[{ 'x': 15, 'y': 15 }, { 'x': 20, 'y': 20 }]), 0);

  });
  test('Rect test 2', (){
    expect(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }],[{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);

  });
  test('Kapil kases', (){
    expect(
        overlappingRectangles([
          {'x': 2, 'y': 1},
          {'x': 5, 'y': 5}
        ], [
          {'x': 3, 'y': 2},
          {'x': 5, 'y': 7}
        ]),
        6);
//    expect(
//        overlappingRectangles([
//          {'x': -1, 'y': -1},
//          {'x': 1, 'y': 1}
//        ], [
//          {'x': 0, 'y': 0},
//          {'x': 5, 'y': 5}
//        ]),
//        1);
    expect(
        overlappingRectangles([
          {'x': 0, 'y': 0},
          {'x': 3, 'y': 3}
        ], [
          {'x': 3, 'y': 3},
          {'x': 5, 'y': 5}
        ]),
        0);
    expect(
        overlappingRectangles([
          {'x': -1, 'y': -1},
          {'x': -3, 'y': -4}
        ], [
          {'x': -2, 'y': -3},
          {'x': -5, 'y': -7}
        ]),
        1);

  });
}
