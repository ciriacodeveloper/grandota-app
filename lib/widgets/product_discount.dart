import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/product_discount_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class ProductDiscount extends StatefulWidget {
  final double width;
  final double marginBottom;
  final double heightImage;
  const ProductDiscount({Key? key, required this.width, required this.marginBottom, required this.heightImage}) : super(key: key);

  @override
  _ProductDiscountState createState() => _ProductDiscountState();
}

class _ProductDiscountState extends State<ProductDiscount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15,bottom: widget.marginBottom),
      child: InkWell(
        onTap: () => Navigator.push(context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: const Duration(milliseconds: 600),
                child: const ProductDiscountDetailScreen())
        ),
        child: Container(
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 3.0))
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: widget.heightImage,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                    image: DecorationImage(image: AssetImage('assets/images/category_one.png'),fit: BoxFit.cover)
                ),
                child: Align(
                  alignment: const Alignment(-1.01,1.01),
                  child: Container(
                    width: 75,
                    height: 40,
                    padding: const EdgeInsets.only(left: 8),
                    decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.local_offer_outlined,size: 15,color: Color(0xff62b621)),
                        const SizedBox(width: 3),
                        Text('-34%',style: GoogleFonts.poppins(fontSize: 14,color: const Color(0xff62b621)),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
                  child: Text('Pollo al cilindro Entero',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis, )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                child: Text('Pollo entero al cilindro, papas fritas familiares, ensalada familiar.',style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),maxLines: 2,overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('S/52.20',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xff62b621),fontWeight: FontWeight.w700),),
                    const SizedBox(width: 5,),
                    Text('S/58.00',style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w700,decoration: TextDecoration.lineThrough),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
