import 'dart:ffi';

void main(List<String> args) {
  IReferanceControl control = IntValue();
  control.ControlMethod(null, 30, 45);
  control = ArrayValue();
  control.ControlMethod(null, [2, 5, 58, 8], [7]);
}

abstract class IReferanceControl {
  IReferanceControl();
  void ControlMethod(dynamic? value, dynamic value2, dynamic value3) {
    value = value2;
    value2 = value3;
    print('$value - $value2');
  }
}

class IntValue extends IReferanceControl {
  IntValue() : super();
}

class ArrayValue extends IReferanceControl {
  ArrayValue() : super();
}
