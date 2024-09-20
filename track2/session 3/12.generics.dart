// single data type in generic 
T test<T> (T input) {
  return input;
}

// for class
class ClassData<T> {
  T data;
  ClassData(this.data);
}


// multible generics
T genericMethod<T, U>(T value1, U value2) {
  return value1;
}

// Restricting the parameterized type
double getAverage<T extends num>(T value1, T value2) {
  return (value1 + value2) / 2;
}

class Data<T extends num> {
  T data;
  Data(this.data);
}

void main () {
  print(test<String>(''));
  // ClassData<int> classData = ClassData<int>(5);

  // Data<int> data = Data<int>(5);
}