//import 'package:column_example/screen/column.dart';
// import 'package:column_example/screen/custom.dart';
// import 'package:column_example/screen/image_example.dart';
// import 'package:column_example/screen/stack_example.dart';
//import 'package:column_example/screen/mystateful.dart';
import 'package:column_example/screen/classworktbf.dart';
import 'package:column_example/screen/mybtn.dart';
import 'package:column_example/screen/myform.dart';
//import 'package:column_example/screen/validateclass.dart';
//import 'package:column_example/screen/stackimage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyForm(),
    );
  }
}
