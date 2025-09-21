import 'package:flutter/material.dart';

class Person{
  Person({
    required this.name, 
    required this.age, 
    required this.career
  });

  String name;
  int age;
  Career career;
}

enum Career{ 
  doctor(title: "หมอ",image: "assets/images/pic2.png", color : Colors.green),
  teacher(title: "ครู",image: "assets/images/pic6.png", color: Colors.blue),
  nurse(title: "พยาบาล",image: "assets/images/pic3.png", color: Colors.pink),
  police(title: "ตำรวจ",image: "assets/images/pic4.png", color: Colors.grey);
 
  const Career({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

List<Person> data = [
  Person(name: "สมชาย", age: 20, career: Career.police),
  Person(name: "สมหญิง", age: 20, career: Career.doctor),
  Person(name: "สมบุตร", age: 20, career: Career.nurse),
  Person(name: "สมพร", age: 20, career: Career.teacher),
  Person(name: "สมหวัง", age: 20, career: Career.doctor),
];
