import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/sections_all_screen.dart';
import 'package:grandota/widgets/section.dart';
import 'package:page_transition/page_transition.dart';

class SectionList extends StatefulWidget {
  const SectionList({Key? key}) : super(key: key);

  @override
  _SectionListState createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Secciones',style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 20),overflow: TextOverflow.ellipsis,)),
              InkWell(
                child: Text('Ver todos',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: const Color(0xff62b621))),
                onTap: () => Navigator.push(context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 600),
                        child: const SectionAllScreen())
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              Section(text: 'Al cilindro', image: AssetImage('assets/images/category_one.png')),
              Section(text: 'Pastas', image: AssetImage('assets/images/category_dos.png')),
              Section(text: 'Al cilindro', image: AssetImage('assets/images/category_one.png')),
              Section(text: 'Pastas', image: AssetImage('assets/images/category_dos.png')),
              Section(text: 'Al cilindro', image: AssetImage('assets/images/category_one.png')),
              Section(text: 'Pastas', image: AssetImage('assets/images/category_dos.png')),
            ],
          ),
        )
      ],
    );
  }
}