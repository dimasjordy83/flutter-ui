import 'package:flutter/material.dart';

class Mybottom extends StatefulWidget {
  const Mybottom({super.key});

  @override
  State<Mybottom> createState() => _MybottomState();
}

class _MybottomState extends State<Mybottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bootom Sheet"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () async {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Your order was placed!'),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open BottomSheet'),
        ),
      ),
    );
  }
}
