import 'package:flutter/material.dart';

class Mysnackbar extends StatefulWidget {
  const Mysnackbar({super.key});

  @override
  State<Mysnackbar> createState() => _MysnackbarState();
}

class _MysnackbarState extends State<Mysnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.blue,
                  content: Text('Your request is succesful'),
                ),
              );
            },
            child: const Text('Open SnackBar'),
          )),
    );
  }
}
