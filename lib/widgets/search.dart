import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/notifications_screen.dart';
import 'package:grandota/screens/search_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () => Navigator.push(context,
                  PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 600),
                      child: const SearchDetailScreen())
              ),
              child: Container(
                padding: const EdgeInsets.only( left: 25, right: 5 ),
                height: 54,
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
                    // TODO: Aquí me debe de llevar a otra pantalla para realizar la busqueda
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Buscar...",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black54,fontSize: 14
                          ),
                          enabled: false,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
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
          ),
          const SizedBox(width: 20),
          InkWell(
            child: Container(
              height: 54,
              width: 54,
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
                Icons.add_alert,
                size: 25,
                color: Color(0xff62b621),
              ),
            ),
            onTap: () => Navigator.push(context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                    child: const NotificationScreen())
            ),
          ),
        ],
      ),
    );
  }
}
