import 'dart:ffi';

void main(List<String> args) {
  IReferanceControl control = IntValue();
  control.ControlMethod(null, 30, 45);
  control = ArrayValue();
  control.ControlMethod(null, [2, 5, 58, 8], [7]);
  //Neden array birbirinin aynısı olmuyor.
  // var value2 = 30;
  // control.value = value2;
  // value2 = 50;
  // print(value2);
  // print(control.value);
  // control = ArrayValue([]);
  // List array2 = [0, 3, 5, 9, 8];
  // control.value = array2;
  // array2.add(51);
  // print(array2);
  // print(control.value);
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
