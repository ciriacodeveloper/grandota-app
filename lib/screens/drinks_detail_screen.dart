import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class DrinksDetailScreen extends StatefulWidget {
  const DrinksDetailScreen({Key? key}) : super(key: key);

  @override
  _DrinksDetailScreenState createState() => _DrinksDetailScreenState();
}


class _DrinksDetailScreenState extends State<DrinksDetailScreen> {
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
  final double _priceProduct = 8;
  double _priceFinal = 8;

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
                              image: AssetImage('assets/images/dos.jpg'),
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
                          child: Text('Gaseosa Inka Cola 1.5Lts',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 24))),
                      Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Gaseosas.',
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'S/8.00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
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
                          Text('Temperatura',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w700,letterSpacing: -0.5)),
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
                            title: Text('Helada',style: GoogleFonts.poppins()),
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                if(value!){
                                  _value = value;
                                  _value2 = false;
                                } else {
                                  _value = false;
                                }
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
                            title: Text('Sin Helar',style: GoogleFonts.poppins()),
                            value: _value2,
                            onChanged: (value) {
                              setState(() {
                                if(value!){
                                  _value2 = value;
                                  _value = false;
                                } else {
                                  _value2 = false;
                                }
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
                FittedBox(child: Text('Agregar al carrito', style: GoogleFonts.nunitoSans(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20))),
                const SizedBox(width: 5),
                Text('S/'+ _priceFinal.toStringAsFixed(2), style: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ));
  }
}
