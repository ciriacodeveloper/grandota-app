import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/widgets/product_list.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class SectionProductsScreen extends StatefulWidget {
  const SectionProductsScreen({Key? key}) : super(key: key);

  @override
  _SectionProductsScreenState createState() => _SectionProductsScreenState();
}

class _SectionProductsScreenState extends State<SectionProductsScreen> {
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
                            const Expanded(
                              child: Text('Al Cilindro'),
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
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: const Duration(milliseconds: 600),
                              child: const CartScreen())
                      ),
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
                        child: Badge(
                            position: const BadgePosition(top: -8.0,end: -3.0,),
                            badgeColor: const Color(0xff62b621),
                            animationType: BadgeAnimationType.scale,
                            badgeContent: Text('2',style: GoogleFonts.poppins(color: const Color(0xffffffff),fontSize: 12)),
                            child: const Icon(Icons.add_shopping_cart_outlined,size: 23,color: Color(0xff62b621),)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: const SingleChildScrollView(
                    child: ProductList(titleAppBar: 'Al cilindro',)
                ),
              ),
            ],
          )
      ),
    );
  }
}
