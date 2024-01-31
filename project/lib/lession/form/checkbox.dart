import 'package:flutter/material.dart';

class Mycheckbox extends StatefulWidget {
  const Mycheckbox({super.key});

  @override
  State<Mycheckbox> createState() => _MycheckboxState();
}

class _MycheckboxState extends State<Mycheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    isChecked = value;
                    print("setuju: $isChecked");
                  }
                });
              },
            ),
            const SizedBox(width: 4),
            const Text(
              "Setuju syarat dan ketentuan.",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
