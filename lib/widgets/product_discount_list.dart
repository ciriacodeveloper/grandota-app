import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/product_discount_all_screen.dart';
import 'package:grandota/widgets/product_discount.dart';
import 'package:page_transition/page_transition.dart';


class ProductDiscountList extends StatefulWidget {
  const ProductDiscountList({Key? key}) : super(key: key);

  @override
  _ProductDiscountListState createState() => _ProductDiscountListState();
}
class _ProductDiscountListState extends State<ProductDiscountList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 25,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Descuentos',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700,),overflow: TextOverflow.ellipsis),
                  const SizedBox(width: 10,),
                  const Icon(Icons.local_offer_outlined,size: 22,color: Color(0xff62b621),)
                ],
              ),
              InkWell(
                child: Text('Ver todos',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: const Color(0xff62b621))),
                onTap: () => Navigator.push(context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 600),
                        child: const ProductDiscountAllScreen())
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 30,top: 15),
            child: Row(
              children: const [
                // TODO: por defecto solo debe mostrar 10 productos como máximo
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
                ProductDiscount(width: 200,marginBottom: 0,heightImage: 120),
              ],
            ),
          ),
        ),
      ],
    );
  }
}