import 'package:flutter/material.dart';

class Myradio extends StatefulWidget {
  const Myradio({super.key});

  @override
  State<Myradio> createState() => _MyradioState();
}

class _MyradioState extends State<Myradio> {
  String sex = "pria";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            const Text("Jenis Kelamin: "),
            const SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'pria',
                  groupValue: sex,
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        sex = value;
                        print("sex: $sex");
                      }
                    });
                  },
                ),
                const Text("Pria"),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: "wanita",
                  groupValue: sex,
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        sex = value;
                        print("sex: $sex");
                      }
                    });
                  },
                ),
                const Text("Wanita"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
