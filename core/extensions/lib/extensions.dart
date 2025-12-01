// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }


import 'package:extensions/constant/constant.dart';

extension NonNullString on String? {
  String orEmpty() {
    if(this == null) {
      return Constant.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if(this == null) {
      return Constant.zero;
    } else {
      return this!;
    }
  }
}