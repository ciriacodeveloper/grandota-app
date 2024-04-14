import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/product_promotion.dart';


class ProductPromotionList extends StatefulWidget {
  const ProductPromotionList({Key? key}) : super(key: key);

  @override
  _ProductPromotionListState createState() => _ProductPromotionListState();
}
class _ProductPromotionListState extends State<ProductPromotionList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 25,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Promociones',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700,),overflow: TextOverflow.ellipsis),
              InkWell(
                child: Text('Ver todos',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: const Color(0xff62b621))),
                onTap: (){},
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
                ProductPromotion(),
                ProductPromotion(),
                ProductPromotion(),
                ProductPromotion(),
                ProductPromotion(),
                ProductPromotion(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}