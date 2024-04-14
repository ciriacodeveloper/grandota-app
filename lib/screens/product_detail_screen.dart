import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/widgets/product_complement_list.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}


class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }

  int _counter = 1;
  final double _priceProduct = 52.2;
  double _priceFinal = 52.2;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _priceFinal = _counter * _priceProduct;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 1) {
        _counter;
      } else {
        _counter--;
        _priceFinal = _priceFinal - _priceProduct;
      }
    });
  }

  late bool _value = false;
  late bool _value2 = false;
  late bool _value3 = false;
  late bool _value4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.black,
                      child: Container(
                        height: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/product.jpg'),
                                fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const CircleAvatar(
                                radius: 16,
                                backgroundColor: Color(0xffffffff),
                                child: Icon(
                                  LineIcons.angleLeft,
                                  color: Color(0xff62b621),
                                  size: 25,
                                )),
                          ),
                          CircleAvatar(
                              radius: 16,
                              backgroundColor: const Color(0xffffffff),
                              child: InkWell(
                                child: (_isFavorite
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Color(0xff62b621),
                                      )
                                    : const Icon(
                                        Icons.favorite_outline,
                                        color: Color(0xff62b621),
                                      )),
                                onTap: _toggleFavorite,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text('Pollo al Cilindro Entero',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 24))),
                      Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Pollo entero al cilindro, papas fritas familiares, ensalada familiar.',
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'S/52.20',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                ),
                                const SizedBox(width: 10),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'S/58.00',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.lineThrough
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 2.0))
                                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: _decrementCounter,
                                  child: const CircleAvatar(
                                    backgroundColor: Color(0xff62b621),
                                    maxRadius: 15,
                                    child: Icon(Icons.remove,
                                        color: Colors.white, size: 23),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Text('$_counter', style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 16)),
                                const SizedBox(width: 15),
                                InkWell(
                                  onTap: _incrementCounter,
                                  child: const CircleAvatar(
                                    backgroundColor: Color(0xff62b621),
                                    maxRadius: 15,
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 23),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Elige tus cremas',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w700,letterSpacing: -0.5)),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                              decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 2),borderRadius: BorderRadius.circular(8)),
                              child: Text('Obligatorio',style: GoogleFonts.poppins()),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CheckboxListTile(
                            title: Text('Mayonesa',style: GoogleFonts.poppins()),
                            value: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.platform,
                            activeColor: const Color(0xff62b621),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CheckboxListTile(
                            title: Text('Ketchup',style: GoogleFonts.poppins()),
                            value: _value2,
                            onChanged: (value){
                              setState(() {
                                _value2 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.platform,
                            activeColor: const Color(0xff62b621),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CheckboxListTile(
                            title: Text('Ocopa',style: GoogleFonts.poppins()),
                            value: _value3,
                            onChanged: (value){
                              setState(() {
                                _value3 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.platform,
                            activeColor: const Color(0xff62b621),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: CheckboxListTile(
                            title: Text('Ají',style: GoogleFonts.poppins()),
                            value: _value4,
                            onChanged: (value){
                              setState(() {
                                _value4 = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.platform,
                            activeColor: const Color(0xff62b621),
                          ),
                        ),
                        const Divider(),
                      ],
                    )
                  ],
                ),
                const ProductComplementList(),

              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                offset: const Offset(0, 0))
          ]),
          child: InkWell(
            onTap: () => Navigator.push(context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: const Duration(milliseconds: 600),
                    child: const CartScreen())
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
                  FittedBox(child: Text('Agregar al carrito', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18))),
                  const SizedBox(width: 5),
                  Text('S/'+ _priceFinal.toStringAsFixed(2), style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        )
    );
  }
}
