```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value {
    // Handle null explicitly
    if (_value == null) {
      throw Exception('Value is not initialized'); // Or return another suitable default
    }
    return _value!;
  }
  void setValue(int newValue) {
    _value = newValue;
  }
}

void main() {
  MyClass obj1 = MyClass(10);
  //MyClass obj2 = MyClass(null); // This will now throw an exception
  try{
    MyClass obj2 = MyClass(null);
    print(obj2.value);
  } catch(e){
    print("Exception caught: $e");
  }
  
  print(obj1.value); // Output: 10
  
}
```