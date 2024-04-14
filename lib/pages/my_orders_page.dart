import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/widgets/menu_drawer.dart';
import 'package:grandota/widgets/order.dart';
import 'package:page_transition/page_transition.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 5,),
                ListTile(
                  title: Text('Mis pedidos',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
                  subtitle: Text('Encuentra todos tus pedidos aquí.',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14)),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: const [
                      Order(status: 'aceptado',method: 'delivery',color: Colors.blue),
                      Order(status: 'en camino',method: 'tienda',color: Colors.yellow),
                      Order(status: 'entregado',method: 'delivery',color: Colors.green),
                      Order(status: 'cancelado',method: 'tienda',color: Colors.red),
                      Order(status: 'aceptado',method: 'delivery',color: Colors.blue),
                      Order(status: 'en camino',method: 'tienda',color: Colors.yellow),
                      Order(status: 'entregado',method: 'delivery',color: Colors.green),
                      Order(status: 'cancelado',method: 'tienda',color: Colors.red),
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
