import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/product_list.dart';
import 'package:line_icons/line_icons.dart';

class SearchDetailScreen extends StatefulWidget {
  const SearchDetailScreen({Key? key}) : super(key: key);

  @override
  _SearchDetailScreenState createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
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
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only( left: 25, right: 5 ),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 3.0))
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Buscar...",
                                hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,fontSize: 14
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xff62b621),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Icon(
                              Icons.search,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: const SingleChildScrollView(
                  child: ProductList(titleAppBar: 'Los más recomendados',)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
