import 'package:flutter/material.dart';

class Mysilver extends StatefulWidget {
  const Mysilver({super.key});

  @override
  State<Mysilver> createState() => _MysilverState();
}

class _MysilverState extends State<Mysilver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Silver App"),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 160,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "UNISNU Jepara",
                  style: TextStyle(color: Colors.black),
                ),
                background: FlutterLogo(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blue[200],
                  height: 100,
                  child: Center(
                    child: Text(
                      "Item $index",
                      textScaler: const TextScaler.linear(2),
                    ),
                  ),
                );
              }, childCount: 20),
            ),
          ],
        ));
  }
}
