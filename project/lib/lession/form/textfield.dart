import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  const Mytextfield({Key? key}) : super(key: key);

  @override
  State<Mytextfield> createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: TextField(
          maxLength: 20,
          controller: textController,
          decoration: const InputDecoration(
            labelText: "Nama",
            labelStyle: TextStyle(color: Colors.blueGrey),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            helperText: "Masukkan nama",
          ),
          onChanged: (value) {
            // Handle the onChanged event if needed
            print("Text changed: $value");
          },
        ),
      ),
    );
  }
}
