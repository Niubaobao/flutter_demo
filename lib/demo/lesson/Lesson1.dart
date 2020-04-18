import 'package:demo/data/lesson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lesson1 extends StatefulWidget {
  @override
  _Lesson1State createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> with LessonText {
  @override
  void initState() {
    print('initState');
    initLesson1();
    super.initState();
  }

  initLesson1() {
    //如果函数只有一条语句， 可以使用箭头简写,如函数体只有一句话，不需要有大括号
    var list = ['lesson1', 'lesson2', 'lesson3'];
    list.forEach(
      (item) => print('${list.indexOf(item)}:$item'),
    );
    //算术运算符
    print('5/2=${5 / 2}结果是双浮点型');
    print('5~/2=${5 ~/ 2}结果是整型');
    print('5%2=${5 % 2}取余');
    var a, b;
    a = 0;
    b = ++a; //a先自增在赋值给b
    b = a++; //a先赋值给b，在进行自增
    print(b);
    //调用mixin方法
    entertainMe();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础知识联系'),
      ),
      body: Container(
        child: Text('基本语法练习'),
      ),
    );
  }
}
