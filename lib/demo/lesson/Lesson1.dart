import 'dart:math';

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
    // 优化
    // 1
    //指定库前缀
    // 如果导入两个存在冲突标识符的库， 则可以为这两个库，或者其中一个指定前缀。 例如，如果 library1 和 library2 都有一个 Element 类， 那么可以通过下面的方式处理：
    // import 'package:lib1/lib1.dart';
    // import 'package:lib2/lib2.dart' as lib2;

    // 使用 lib1 中的 Element。
    // Element element1 = Element();

    // 使用 lib2 中的 Element。
    // lib2.Element element2 = lib2.Element();

    //2
    // 导入库的一部分
    // 如果你只使用库的一部分功能，则可以选择需要导入的 内容。例如：

    // Import only foo.
    // import 'package:lib1/lib1.dart' show foo;

    // Import all names EXCEPT foo.
    // import 'package:lib2/lib2.dart' hide foo;

    //通过实现类的 call() 方法， 能够让类像函数一样被调用
    //eg:
    var callClass = WannabeFunction();
    var out = callClass("Hi", "there,", "gang");
    print('$out');
    //最大值最小值
    print('1和100中比较小的是:${min(1, 100)}');
    print('1和100中比较大的数字是：${max(1, 100)}');
    //随机数
    /// Between 0 and 9.
    print(Random().nextInt(10));

    /// Between 0.0 and 1.0: [0, 1)
    print(Random().nextDouble());
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

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}
