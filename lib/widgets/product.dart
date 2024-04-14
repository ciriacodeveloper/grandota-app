import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/product_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
    return InkWell(
      onTap: () => Navigator.push(context,
          PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: const Duration(milliseconds: 600),
              child: const ProductDetailScreen())
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade300))
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 5,right: 10),
                      child: Text('2 Pollos Enteros + chaufa',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis, )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,right: 10),
                    child: Text('Pollo entero al cilindro, papas fritas familiares, ensalada familiar.',style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),maxLines: 2,overflow: TextOverflow.ellipsis),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,bottom: 10),
                    child: Text('S/52.20',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xff62b621),fontWeight: FontWeight.w700),),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/category_one.png'),fit: BoxFit.cover)
              ),
              child: Align(
                alignment: const Alignment(1.2,-1.2),
                child: CircleAvatar(
                    radius: 14,
                    backgroundColor: const Color(0xff62b621),
                    child: InkWell(
                      child: (_isFavorite
                          ? const Icon(
                        Icons.favorite,
                        size: 20,
                        color: Color(0xffffffff),
                      )
                          : const Icon(
                        Icons.favorite_outline,
                        size: 20,
                        color: Color(0xffffffff),
                      )),
                      onTap: _toggleFavorite,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
