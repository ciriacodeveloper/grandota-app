import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/section_all_list.dart';
import 'package:line_icons/line_icons.dart';

class SectionAllScreen extends StatefulWidget {
  const SectionAllScreen({Key? key}) : super(key: key);

  @override
  _SectionAllScreenState createState() => _SectionAllScreenState();
}

class _SectionAllScreenState extends State<SectionAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: const Icon(
                          LineIcons.angleLeft,
                          size: 25,
                          color: Color(0xff62b621),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('Secciones',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
                        subtitle: Text('Encuentra lo mejor en Gandota',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12)),
                        contentPadding: const EdgeInsets.only(left: 15),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                  child: const SectionAllList()
              )
            ],
          )
      ),
    );
  }
}
