import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/section_products_screen.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class SectionAll extends StatefulWidget {
  final String text;
  final String description;
  final AssetImage image;
  const SectionAll({Key? key, required this.text,required this.image, required this.description}) : super(key: key);

  @override
  _SectionAllState createState() => _SectionAllState();
}

class _SectionAllState extends State<SectionAll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300))
      ),
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.text,style: GoogleFonts.poppins(fontWeight: FontWeight.w700),),
                  Text(widget.description,style: GoogleFonts.poppins(fontSize: 12),)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                    child: const SectionProductsScreen())
            ),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0xff62b621),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 3.0))
                ],
              ),
              child: const Icon(
                LineIcons.angleRight,
                size: 25,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
