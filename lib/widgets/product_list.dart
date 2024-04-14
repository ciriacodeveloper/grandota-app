import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/product.dart';


class ProductList extends StatefulWidget {
  final String titleAppBar;
  const ProductList({Key? key, required this.titleAppBar}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}
class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 25,right: 15),
          child: Text(widget.titleAppBar,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700,)),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300))
          ),
          child: Column(
            children: const [
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
            ],
          ),
        ),
      ],
    );
  }
}