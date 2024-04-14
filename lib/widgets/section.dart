import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/section_products_screen.dart';
import 'package:page_transition/page_transition.dart';

class Section extends StatefulWidget {
  final String text;
  final AssetImage image;
  const Section({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () => Navigator.push(context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: const Duration(milliseconds: 600),
                child: const SectionProductsScreen())
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff62b621).withOpacity(0.5),
                        blurRadius: 10.0,
                        offset: const Offset(0.0, 0.0))
                  ],
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: widget.image,fit: BoxFit.cover)
              ),
            ),
            Text(widget.text,style: GoogleFonts.poppins(),)
          ],
        ),
      ),
    );
  }
}
