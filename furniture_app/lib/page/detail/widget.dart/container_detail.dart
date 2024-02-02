import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/page/detail/widget.dart/add_chart.dart';
import 'package:furniture_app/page/detail/widget.dart/name_produk.dart';
import 'package:furniture_app/page/detail/widget.dart/select_color.dart';
import 'package:furniture_app/page/detail/widget.dart/select_produk.dart';
import 'package:google_fonts/google_fonts.dart';

class MycontainerDetail extends StatefulWidget {
  const MycontainerDetail({super.key});

  @override
  State<MycontainerDetail> createState() => _MycontainerDetailState();
}

class _MycontainerDetailState extends State<MycontainerDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          //pembuatan garis strip kecil ditengah
          Container(
            width: 36,
            height: 5,
            color: const Color(0xFFD8D8D8),
          ),
          const SizedBox(height: 15),
          //pembuatan nama produk, harga, dan icon bintang, select color, select quantity dan deskripsi produk dibungkus dalam Padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //pembuatan nama produk dan harga
                // const NamaProdukHargaDetail(),
                const MynameProduk(),
                const SizedBox(height: 9),
                //pembuatan icon bintang
                SvgPicture.asset("assets/icons/Score.svg"),
                const SizedBox(height: 21),
                //pembuatan select color
                const MyselectColor(),
                // const SelectColorDetail(),
                const SizedBox(height: 19),
                //pembuatan select quantity
                const MyselectProduk(),
                const SizedBox(height: 32),
                SizedBox(
                    height: 70,
                    child: SingleChildScrollView(
                      child: Text(
                        "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFADADAD),
                        ),
                      ),
                    )),
                const SizedBox(height: 30),
                //pembuatan tombol add to cart
                const MyaddChart()
                // const AddToCartDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
