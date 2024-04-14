import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/product_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class ProductPromotion extends StatefulWidget {
  const ProductPromotion({Key? key}) : super(key: key);

  @override
  _ProductPromotionState createState() => _ProductPromotionState();
}

class _ProductPromotionState extends State<ProductPromotion> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () => Navigator.push(context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: const Duration(milliseconds: 600),
                child: const ProductDetailScreen())
        ),
        child: Container(
          width: 200,
          height: 265,
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
                height: 120,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  image: DecorationImage(image: AssetImage('assets/images/category_one.png'),fit: BoxFit.cover)
                ),
                child: Align(
                  alignment: const Alignment(0.95,-0.9),
                  child: CircleAvatar(
                      radius: 16,
                      backgroundColor: const Color(0xffffffff),
                      child: InkWell(
                        child: (_isFavorite
                            ? const Icon(
                          Icons.favorite,
                          color: Color(0xff62b621),
                        )
                            : const Icon(
                          Icons.favorite_outline,
                          color: Color(0xff62b621),
                        )),
                        onTap: _toggleFavorite,
                      )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
                  child: Text('2 Pollos Enteros + chaufa',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis, )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                child: Text('Pollo entero al cilindro, papas fritas familiares, ensalada familiar.',style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),maxLines: 2,overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                child: Text('S/52.20',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xff62b621),fontWeight: FontWeight.w700),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
