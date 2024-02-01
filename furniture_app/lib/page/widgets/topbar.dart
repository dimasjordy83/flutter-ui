import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/page/widgets/headline.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({super.key});

  @override
  State<MyTopBar> createState() => _MyTopBarState();
}

class _MyTopBarState extends State<MyTopBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 255, 214, 64),
          title: Center(
              child: Text(
            "Home",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff4A4543)),
            ),
          )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'),
            ),
          ],
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
                    child: Image.asset('assets/images/account/dnf.png'),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Drawer'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              // ListTile(
              //   title: const Text('Page 2'),
              //   onTap: () {
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (context) => Mypagetwo()));
              //   },
              // ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(2),
          child: MyHeadline(),
        ));
  }
}
