void main() {
  // basic and built-in data types
  int a = 10;
  var b = 20.54;
  String name = "Istiaq Ahmed Fahad";
  print(a);
  print(b);
  print("My name is: $name");

  final c = a + 5;
  // const c = a + 5; //error
  print("Updated value of a is: $c");

  String number = "123";
  var value = int.parse(number);
  var modifiedValue = value + 1;
  print(
      "Integer version of number is: $value and it's modified value is: $modifiedValue");

  if (value.isOdd)
    print("$value is odd number");
  else
    print("$value is even number");

  // LIST & STRING---------------------------------------------------------------
  var ls;
  var ls2 = [1, ...?ls]; // ...?ls is null aware-spread operator
  var arr = {1, 2, 4, "Fahad"};
  var names = 'fahad';
  int aa = 10;
  var bb = a.toString();

  bb += "15";
  aa += 15;
  name = name.toUpperCase();

  print("NAME IS: $names");
  print("Int value: $aa");
  print("String value: $bb");

  for (var a in arr) {
    print(a);
  }

  print("List 2: $ls2 and list size is: ${ls2.length}");

  // SET & MAPS--------------------------------------------------------------

  var roll = <int>{};
  var students = {
    "Fahad": 1204,
    "Sifat": 1221,
    "Sharif": 1211,
    "Abir": 1211,
    "Banik": 1230,
  };

  roll.add(1201);
  roll.add(1204);
  roll.add(1209);
  roll.add(1211);
  print("Total elements in set is: ${roll.length}");

  print("Total elements in map is: ${students.length}");
  print("Individual element in map. For example: Fahad = ${students['Fahad']}");
  students['Araf'] = 1220;
  print("After appending new value, size is: ${students.length}");

  // FUNCTIONS---------------------------------------------------------------

  void test() {
    print("This is a test function");
  }

  summation(var a, var b) {
    return a + b;
  }

  test();
  var x = summation("ahmed", "fahad");
  print("Summation is: $x");
}
