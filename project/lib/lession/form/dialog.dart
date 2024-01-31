import 'package:flutter/material.dart';

class Mydialog extends StatefulWidget {
  const Mydialog({super.key});

  @override
  State<Mydialog> createState() => _MydialogState();
}

class _MydialogState extends State<Mydialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Info'),
                  content: const SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('Hallo Boss:)'),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Ok'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
