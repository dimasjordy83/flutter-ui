import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> categories = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Kolom di atas GridView
            Container(
                width: 250,
                margin: EdgeInsets.fromLTRB(0, 0, 100, 25),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255)),
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Discover the most modern furniture',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 25))),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,
                    child: CustomListView(
                      categories: categories,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 80, 10),
                child: Text('Recommended furniture',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 16))),
            // GridView di dalam Expanded agar dapat mengisi sisa ruang
            Expanded(
              child: MyGridView(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.categories,
    required this.scrollDirection,
  });
  final List<String> categories;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    bool _select = false;

    return ListView(
      scrollDirection: scrollDirection,
      children: List.generate(
        categories.length,
        (index) {
          return GestureDetector(
            onTap: () {
              _select = !_select;
            },
            child: Container(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: Text(categories[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    )),
              ),
            ),
            // child: AnimatedContainer(
            //   duration: const Duration(milliseconds: 150),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.grey,
            //   ),
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 24,
            //     vertical: 8,
            //   ),
            //   margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            //   child: Text(categories[index],
            //       textAlign: TextAlign.center,
            //       style: const TextStyle(
            //         fontSize: 12,
            //         color: Color.fromARGB(255, 255, 255, 255),
            //         fontWeight: FontWeight.w500,
            //         letterSpacing: 1,
            //       )),
            // ),
          );
        },
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
