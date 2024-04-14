import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/product_complement.dart';


class ProductComplementList extends StatefulWidget {
  const ProductComplementList({Key? key}) : super(key: key);

  @override
  _ProductComplementListState createState() => _ProductComplementListState();
}
class _ProductComplementListState extends State<ProductComplementList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Complementa tu orden',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w700,letterSpacing: -0.5),overflow: TextOverflow.ellipsis)),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 30,top: 20),
            child: Row(
              children: const [
                ProductComplement(image: AssetImage('assets/images/dos.jpg'),name: 'Maracuya 1Lt',price: 10),
                ProductComplement(image: AssetImage('assets/images/pepsi.jpg'),name: 'Gaseosa Inka Cola 1.5Lts',price: 8),
                ProductComplement(image: AssetImage('assets/images/pepsi.jpg'),name: 'Gaseosa Coca Cola 1.5Lts',price: 8),
                ProductComplement(image: AssetImage('assets/images/pepsi.jpg'),name: 'Chicha morada 1Lt',price: 12),
                ProductComplement(image: AssetImage('assets/images/pepsi.jpg'),name: 'Limonada 1Lt',price: 8),
                ProductComplement(image: AssetImage('assets/images/pepsi.jpg'),name: 'Agua Personal 500mlts',price: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}