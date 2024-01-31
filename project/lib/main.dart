import 'package:flutter/material.dart';
import 'package:project/lession/button.dart';
import 'package:project/lession/circleavatar.dart';
import 'package:project/lession/container.dart';
import 'package:project/lession/form/bottomsheet.dart';
import 'package:project/lession/form/checkbox.dart';
import 'package:project/lession/form/datepick.dart';
import 'package:project/lession/form/datepicker.dart';
import 'package:project/lession/form/dialog.dart';
import 'package:project/lession/form/dropdown.dart';
import 'package:project/lession/form/radio.dart';
import 'package:project/lession/form/snackbar.dart';
import 'package:project/lession/form/textfield.dart';
import 'package:project/lession/image.dart';
import 'package:project/lession/layout/column.dart';
import 'package:project/lession/layout/grid.dart';
import 'package:project/lession/layout/list_view.dart';
import 'package:project/lession/layout/row.dart';
import 'package:project/lession/layout/size_box.dart';
import 'package:project/lession/layout/stack.dart';
import 'package:project/lession/layout/wrap.dart';
import 'package:project/lession/navbar.dart';
import 'package:project/lession/layout/list_view.dart';
import 'package:project/lession/form/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Mybottom(),
    );
  }
}
