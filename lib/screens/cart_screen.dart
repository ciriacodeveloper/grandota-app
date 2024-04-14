import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/pages/home_page.dart';
import 'package:grandota/screens/checkout_screen.dart';
import 'package:grandota/widgets/product_cart.dart';
import 'package:grandota/widgets/product_complement_list.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double _priceFinal = 52.2;
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
                      title: Text('Tu carrito',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
                      subtitle: Text('Gracias por elegir Gandota.',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12)),
                      contentPadding: const EdgeInsets.only(left: 15),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 15,top: 10),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                      ),
                      child: Column(
                        children: const [
                          ProductCart(),
                          ProductCart()
                        ],
                      ),
                    ),
                    const ProductComplementList()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: Container(
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: const Offset(0, 0))
          ]),
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 600),
                        child: const CheckoutScreen())
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xff62b621),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 2.0))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(child: Text('Ir a pagar', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16))),
                      const SizedBox(width: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('subtotal: ', style: GoogleFonts.poppins(color: Colors.white)),
                          Text('S/'+ _priceFinal.toStringAsFixed(2), style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const HomePage()), (route) => false),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 2.0))
                    ],
                  ),
                  child: Text('Seguir comprando', style: GoogleFonts.poppins(color: const Color(0xff62b621), fontWeight: FontWeight.w700, fontSize: 16),textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        )
    );
  }
}
