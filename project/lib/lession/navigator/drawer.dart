import 'package:flutter/material.dart';
import 'package:project/lession/navigator/pagetwo.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blue[100],
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                accountName: const Text(
                  'Dimas Jordy',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "dimasjordy0410@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/images/dnf.png'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Drawer'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Page 2'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Mypagetwo()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
