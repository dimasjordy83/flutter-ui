import 'package:flutter/material.dart';

class Mydropdown extends StatefulWidget {
  const Mydropdown({super.key});

  @override
  State<Mydropdown> createState() => _MydropdownState();
}

class _MydropdownState extends State<Mydropdown> {
  String selected = "Dart";

  final List<String> dropDownList = const [
    "Dart",
    "Kotlin",
    "Java",
    "Javascript",
    "PHP",
    "Python",
    "Ruby",
    "Swift",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Container(
        width: 200,
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Bahasa favorit: "),
            const SizedBox(width: 4),
            DropdownButton(
              value: selected,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 10,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 3,
                    ),
                  ),
                ),
              ),
              items: dropDownList.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  if (val != null) selected = val;
                  print(selected);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
