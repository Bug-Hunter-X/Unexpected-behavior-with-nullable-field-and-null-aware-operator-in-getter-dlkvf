```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // This line can cause unexpected behavior
  void setValue(int newValue) {
    _value = newValue;
  }
}

void main() {
  MyClass obj1 = MyClass(10);
  MyClass obj2 = MyClass(null);

  print(obj1.value); // Output: 10
  print(obj2.value); // Output: 0

  obj2.setValue(20);
  print(obj2.value); // Output: 20
}
```