import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "All",
      "Living Room",
      "Bedroom",
      "Dining Room",
      "Kitchen"
    ];
    return Scaffold(
      body: Container(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset.zero,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
              );
            }),
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
