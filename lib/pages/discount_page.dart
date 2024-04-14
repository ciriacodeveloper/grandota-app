import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/widgets/menu_drawer.dart';
import 'package:grandota/widgets/product_discount.dart';
import 'package:page_transition/page_transition.dart';

class DiscountPage extends StatefulWidget {
  const DiscountPage({Key? key}) : super(key: key);

  @override
  _DiscountPageState createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000000),
        title: Container(
          width: 200,
          height: 45,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_tres.png'),
                  fit: BoxFit.fitHeight)),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () => Navigator.push(context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                    child: const CartScreen())
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              child: Badge(
                  badgeColor: const Color(0xffffffff),
                  animationType: BadgeAnimationType.scale,
                  badgeContent: Text('2',style: GoogleFonts.poppins(color: const Color(0xff62b621),fontSize: 12)),
                  child: const Icon(Icons.add_shopping_cart_outlined,size: 23,color: Color(0xff62b621),)
              ),
            ),
          )
        ],
        iconTheme: const IconThemeData( color: Color(0xff62b621) ),
        elevation: 0,
      ),
      drawer: const MenuDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Descuentos',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700,),overflow: TextOverflow.ellipsis),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                      ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                      ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                      ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                      ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
