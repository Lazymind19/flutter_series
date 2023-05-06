import 'package:flutter_series/part_two_unit_testing/mathmatices.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Mathmatices? math;

  setUpAll(() {
    math = Mathmatices();
  });

  group("mathmatices add", () {
    test("should preform addition", () {
      int result = math!.add(5, 6);

      expect(result, 11);
    });
  });

  group("mathmatices subtraction", () {
    test("should perform subtraction", () {
      int result = math!.sub(10, 5);
      expect(result, 5);
    });

    test("should perform subtract in negative", () {
      int result = math!.sub(5, 10);
      expect(result, -5);
    });
  });

  group("mathmatices multiplication", () {
    test("should perform multiplication", () {
      int result = math!.mul(2, 2);
      expect(result, 4);
    });

    test("should perform negative multiple ", () {
      int result = math!.mul(-2, 5);
      expect(result, -10);
    });
  });
}
