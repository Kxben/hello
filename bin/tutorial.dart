import 'dart:math';
import 'dart:convert';
/*import 'dart:mirrors';
import 'dart:io';
import 'package:tutorial/user.dart/user.dart';

class User {
  int id = 0;
  String name = '';
  User({this.id = 32, this.name = 'hello'});
  User.newMansion() {
    this.id = 45;
    this.name = 'hjhyy';
  }
  // String toJSON() {
  // return '{"name":$name, "id":$id}';
}*/

//  @override
//String toString() {
//return 'User(id: $id, name: $name)';
//}
//}

//void main(List<String> arguments) {
void main() {
  // print(isPositive(3)); // true
  //print(isPositive(-7)); // false
  //print(isPositive(6));
  //String? name;
  //name = 'Ray';
  //print(name.length);
  //int? age;
  //print(age?.isNegative);
  List<String> lists = ['asare', 'adwoa', 'yaw', 'esi', 'desmond', 'asare'];
  lists[1] = 'sherifa';
  lists.add('agyemang');
  lists.insert(1, 'agyegon');
  lists.remove('agyegon');
  print(lists);
  final integers = [32, 73, 2, 343, 7, 10, 1];
  integers.sort();
  print(integers.first);
  for (final anyThing in lists) {
    print('I also like $anyThing!');
  }
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  //desserts.addAll(pastries);
  //desserts.addAll(candy);
  print(desserts);
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
  List<String>? myDesserts = ['cake', 'pie'];
  myDesserts = null;
  String? dessertToday = myDesserts?[1];
  print(dessertToday);
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  print(intersection);
  final differenceA = setA.difference(setB);
  print(differenceA);
  final randomIntList = <int>[];
  for (int i = 0; i < 10; i++) {
    // 2
    final randomInt = Random().nextInt(10) + 1;
    randomIntList.add(randomInt);
  }
  print(randomIntList);
  final uniqueValues = <int>{};
  final duplicates = <int>{};
  for (int number in randomIntList) {
    if (uniqueValues.contains(number)) {
      duplicates.add(number);
    }
    // 3
    uniqueValues.add(number);
  }
  print(duplicates);
  print(uniqueValues);
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);
  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes);

  final userObject = User(
    id: 1234,
    name: 'John',
    emails: [
      'john@example.com',
      'jhagemann@example.com',
    ],
  );
  final userMap = userObject.toJson();
  final userString = jsonEncode(userMap);
  print(userString);
  print(userMap);
  final jsonString =
      '{"id":4321,"name":"Marcia","emails":["marcia@example.com"]}';
  final jsonMap = jsonDecode(jsonString);

  final squares = hundredSquares();
  for (int square in squares) {
    print(square * square);
  }
  final time = Duration(hours: 2, minutes: 52, seconds: 43);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
  final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
  final timeString = '$hours:$minutes:$seconds';
  print(timeString);
  const phrase = 'live and learn';
  final withUnderscores = phrase.replaceAll(' ', '_');
  print(withUnderscores);
  String multilineString = '''
France
USA
Germany
Benin
China
Mexico
Mongolia''';
  final singleLineString = multilineString.split('\n');
  print(singleLineString);

  const numbers = [1, 2, 3];
  numbers.forEach((int number) {
    print(number * 3);
  });
  final flowerColor = {
    'roses': 'red',
    'violets': 'blue',
  };
  flowerColor.forEach((flower, color) {
    print('$flower are $color');
  });

  final myButton = Button(
    title: 'Click me!',
    onPressed: () {
      print('Clicked');
    },
  );
  myButton.onPressed();
}

//Classes and functions outside the main function!

class Button {
  Button({
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function onPressed;
}

class User {
  final int id;
  final String name;
  final List<String> emails;

  const User({
    required this.id,
    required this.name,
    required this.emails,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }

  factory User.fromJson(Map<String, dynamic> jsonMap) {
    // 1
    dynamic id = jsonMap['id'];
    if (id is! int) id = 0;
    // 2
    dynamic name = jsonMap['name'];
    if (name is! String) name = '';
    // 3
    dynamic maybeEmails = jsonMap['emails'];
    final emails = <String>[];
    if (maybeEmails is List) {
      for (dynamic email in maybeEmails) {
        if (email is String) emails.add(email);
      }
    }
    return User(
      id: id,
      name: name,
      emails: emails,
    );
  }
}

Iterable<int> hundredSquares() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i * i;
  }
}


//bool isPositive(int anInteger) {
  //return !anInteger.isNegative;
//}

 

  /*// final user = User(2, 's');
  user.name = 'ama Saman';
  user.id = 34;
  print(user);
/* /* //Introduction
  print('Hello world!');
  print(5+6);
  //Excercise one
  print(sin(45*pi/180));
  print(1/sqrt(2));
 bool yes = 10.isEven;
  int kay = 3.3948930.round();
print("$yes, you are not a 10 but a $kay");
int myAge=45;
const testNumber = 88;
const evenOdd = testNumber%5;
var trial=evenOdd;
trial +=5;
print(evenOdd+trial);
// Challenge 1
int dogs=4;
dogs++;
print(dogs);
int age=16;
print(age);
 age=30;
print(age);
const x=46;
const y=10;
const answer1=(x*100)+y;
const answer2=(x*100)+(y*100);
const answer3=(x*100)+(y/10);
//print("$answer1, $answer2, $answer3");
const a =2.0;
const b =3.0; 
const c =1.0;
 
  //const a = 2.0;
  //const b = 3.0;
  //const c = 1.0;
  final  root1= (-b+sqrt(b*b - 4*a*c))/(2*a);
  final root2= (-b-sqrt(b*b - 4*a*c))/(2*a);
  print("$root1 and $root2 are the roots of the expression");

  //final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  //final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
  const kwameIsangry=false && true ||true;
  print(kwameIsangry);
*/
//Challenge 1
  int attendance = ((20 / 100) * 90).toInt();
  int homework = ((30 / 100) * 80).toInt();
  int exams = ((50 / 100) * 94).toInt();
  int grade = exams + attendance + homework;
  print(
 
      'The grade of the student is $grade% from $attendance, $homework and $exams');
      
//test();
//int sammyGyamfi = 34;
//const doesOneEqualTwo = (1 == 2)
//  ? 'hehehe, you will see something'
//: 'we would do it in style hehehehe';
//  print(doesOneEqualTwo * sammyGyamfi);
  int sum = 3;
  while (sum < 4893) {
    print(sum);
    sum += 14;
  }
  const input = 12;
  final output = compliment(input);
  print(output);
}

String compliment(int number) {
  return '$number is a very nice number.';
}

void test() {
  final names = ['Foo', 'bar', 'yes'];
  final foo = names[2];
  print(foo);
  const bag = {'asare': 34, 'defoc': 'felis', 'tommo': 34.9};
  print(bag.values);
}

enum YummyBuggies {
  yesu,
  awurade,
  eii,
  ghana,
  hmm,}
  */*/
