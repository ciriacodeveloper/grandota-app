import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/product_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({Key? key}) : super(key: key);

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: AssetImage('assets/images/category_one.png'),fit: BoxFit.cover)
            ),
            child: Align(
              alignment: const Alignment(1.15,-1.15),
              child: InkWell(
                // TODO: Aquí tiene la opción de editar su producto con lo que ya escogió
                onTap: () => Navigator.push(context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 600),
                        child: const ProductDetailScreen())
                ),
                child: const CircleAvatar(
                    radius: 11,
                    backgroundColor: Color(0xff62b621),
                    child: Icon(Icons.edit_outlined,size: 12,color: Colors.white,)
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 5,right: 10),
                    child: Text('2 Pollos Enteros + chaufa',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14),maxLines: 2,overflow: TextOverflow.ellipsis, )
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10,right: 10),
                  child: Text('Pollo entero al cilindro, papas fritas familiares, ensalada familiar.',style: GoogleFonts.poppins(color: Colors.grey, fontSize: 10),maxLines: 2,overflow: TextOverflow.ellipsis),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 10),
                  child: Text('S/52.20',style: GoogleFonts.poppins(fontSize: 14,color: const Color(0xff62b621),fontWeight: FontWeight.w700),),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                    child: const ProductDetailScreen())
            ),
            child: const CircleAvatar(
                radius: 13,
                backgroundColor: Color(0xff62b621),
                child: Icon(Icons.delete_outline,size: 18,color: Colors.white,)
            ),
          ),
        ],
      ),
    );
  }
}
