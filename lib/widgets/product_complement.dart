import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/drinks_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class ProductComplement extends StatefulWidget {
  final AssetImage image;
  final String name;
  final int price;
  const ProductComplement({Key? key, required this.image, required this.name, required this.price}) : super(key: key);

  @override
  _ProductComplementState createState() => _ProductComplementState();
}

class _ProductComplementState extends State<ProductComplement> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => Navigator.push(context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: const Duration(milliseconds: 600),
                child: const DrinksDetailScreen())
        ),
        child: Container(
          width: 120,
          height: 210,
          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 3.0))
          ], ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      // borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage( image: widget.image,fit: BoxFit.cover )
                  ),
                ),
              ),
              Padding( padding: const EdgeInsets.all(8),
                  child: Text(widget.name,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,),maxLines: 2,overflow: TextOverflow.ellipsis, )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 10),
                child: Text('S/${widget.price.toString()}',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xff62b621),fontWeight: FontWeight.w700), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

