import 'package:flutter/material.dart';

class Myswitch extends StatefulWidget {
  const Myswitch({super.key});

  @override
  State<Myswitch> createState() => _MyswitchState();
}

class _MyswitchState extends State<Myswitch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            const Text("Connect Instagram"),
            Switch(
              value: isOn,
              onChanged: (bool? val) {
                if (val != null) {
                  setState(() {
                    isOn = val;
                    print("Switch: $isOn");
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
