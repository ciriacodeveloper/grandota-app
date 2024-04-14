import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/widgets/carrusel_images.dart';
import 'package:grandota/widgets/section_list.dart';
import 'package:grandota/widgets/menu_drawer.dart';
import 'package:grandota/widgets/product_discount_list.dart';
import 'package:grandota/widgets/product_list.dart';
import 'package:grandota/widgets/product_promotion_list.dart';
import 'package:grandota/widgets/search.dart';
import 'package:badges/badges.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.black,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light
      ),
    );
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
            children: const [
              Search(),
              SectionList(),
              ProductDiscountList(),
              SliderImage(),
              ProductPromotionList(),
              SliderImage(),
              ProductList(titleAppBar: 'Recomendados para ti',)
            ],
          ),
        ),
      ),
    );
  }
}