import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/cart_screen.dart';
import 'package:grandota/screens/confirmed_order_screen.dart';
import 'package:grandota/screens/pick_up_in_store_screen.dart';
import 'package:grandota/widgets/custom_button.dart';
import 'package:grandota/widgets/saved_address.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  late bool _value = false;
  late bool _value2 = false;
  late bool _value3 = false;
  late bool _value4 = false;
  late bool _value5 = false;

  @override
  Widget build(BuildContext context) {
    int numberMobile = 987916439;
    double _priceFinal = 56.2;
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
                        title: Text('Tu pedido',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
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
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Datos de entrega',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),overflow: TextOverflow.ellipsis,),
                                InkWell(
                                  child: Text('Cambiar',style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: const Color(0xff62b621))),
                                  onTap: _chooseNewAddress,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text('Jefferson Agustín Farfán Guadalupe',style: GoogleFonts.poppins(),maxLines: 1,overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5,),
                            Text('Tel: $numberMobile',style: GoogleFonts.poppins(),),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 65,
                                  width: 65,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(image: AssetImage('assets/images/map.jpg'),fit: BoxFit.cover)
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Casa',style: GoogleFonts.poppins(fontWeight: FontWeight.w600),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                      Text('Av. Larco 645, 153264. Ref: al costado de mi vecina la chismosa.',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Resumen del pedido',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text('2 Pollos Enteros + chaufa',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                const SizedBox(width: 10,),
                                Text('s/52.20',style: GoogleFonts.poppins(),),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text('Gaseosa Pepsi 2Lts',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                const SizedBox(width: 10,),
                                Text('s/8.00',style: GoogleFonts.poppins(),),
                              ],
                            ),
                            const Divider(height: 20,),
                            Row(
                              children: [
                                Text('Entrega estimada: ',style: GoogleFonts.poppins(),),
                                Text('45 min',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15,bottom: 20,left: 15,right: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agrega un cupón',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Introduzca un cupón...',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    maxLines: 1,
                                    cursorColor: Colors.grey,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: const Color(0xff62b621),
                                    ),
                                    child:const Center(
                                      child: Icon(Icons.check,color: Colors.white,)
                                    ),

                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Forma de pago',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                            const SizedBox(height: 10,),
                            Column(
                              children: [
                                CheckboxListTile(
                                  title: Text('Contra entrega con tarjeta',style: GoogleFonts.poppins(fontSize: 14)),
                                  value: _value,
                                  onChanged: (value){
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
                                const Divider(),
                                CheckboxListTile(
                                  title: Text('Contra entrega con efectivo',style: GoogleFonts.poppins(fontSize: 14)),
                                  value: _value2,
                                  onChanged: (value){
                                    setState(() {
                                      if(value!){
                                        _value2 = value;
                                        _value = false;
                                        _value3 = false;
                                      } else {
                                        _value2 = false;
                                      }
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.platform,
                                  activeColor: const Color(0xff62b621),
                                ),
                                const Divider(),
                                CheckboxListTile(
                                  title: Text('Yape',style: GoogleFonts.poppins(fontSize: 14)),
                                  value: _value3,
                                  onChanged: (value){
                                    setState(() {
                                      if(value!){
                                        _value3 = value;
                                        _value2 = false;
                                        _value4 = false;
                                      } else {
                                        _value3 = false;
                                      }
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.platform,
                                  activeColor: const Color(0xff62b621),
                                ),
                                const Divider(),
                                CheckboxListTile(
                                  title: Text('Plin',style: GoogleFonts.poppins(fontSize: 14)),
                                  value: _value4,
                                  onChanged: (value){
                                    setState(() {
                                      if(value!){
                                        _value4 = value;
                                        _value3 = false;
                                      } else {
                                        _value4 = false;
                                      }
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.platform,
                                  activeColor: const Color(0xff62b621),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Resumen de pago',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(child: Text('Costo de productos',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                const SizedBox(width: 10,),
                                Text('s/60.20',style: GoogleFonts.poppins(),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(child: Text('Costo de envío',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                const SizedBox(width: 10,),
                                Text('s/5.00',style: GoogleFonts.poppins(),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: _serviceFee,
                                  child: Row(
                                    children: [
                                      Text('Tarifa de Servicio',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,),
                                      const SizedBox(width: 5,),
                                      const Icon(Icons.info_outline,size: 16,)
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text('s/1.00',style: GoogleFonts.poppins(),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('¿Quieres dejar una nota?',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                            const SizedBox(height: 10,),
                            Form(
                              child: TextFormField(
                                // maxLines: 3,
                                maxLength: 100,
                                decoration: const InputDecoration(
                                  hintText: 'Escribe tu nota aquí...',
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0.0, 3.0))
                          ],
                        ),
                        child: CheckboxListTile(
                          title: Text('Al seleccionar esta opción aceptas los términos y condiciones de la compra.',style: GoogleFonts.poppins(fontSize: 14)),
                          value: _value5,
                          onChanged: (value){
                            setState(() {
                              if(value!){
                                _value5 = value;
                              } else {
                                _value5 = false;
                              }
                            });
                          },
                          contentPadding: const EdgeInsets.only(left: 5),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: const Color(0xff62b621),
                        ),
                      ),
                      const SizedBox(height: 15,)
                    ],
                  ),
                ),
              )
            ],
          )
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
            onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const ConfirmedOrderScreen()), (route) => false),
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
                  FittedBox(child: Text('Hacer pedido', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18))),
                  const SizedBox(width: 5),
                  Text('S/'+ _priceFinal.toStringAsFixed(2), style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        )
    );
  }
  void _chooseNewAddress() {
    showStickyFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: .98,
      headerHeight: 70,
      context: context,
      anchors: [.2, 0.5, .98],
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      headerBuilder: (context, offset) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 0.3)
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(offset == 0.98 ? 0 : 30),
              topRight: Radius.circular(offset == 0.98 ? 0 : 30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FittedBox(
              child: Text('Elige una nueva dirección',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),
              ),
            ),
          ),
        );
      },
      bodyBuilder: (context, offset) {
        return SliverChildListDelegate(
            [
              const SizedBox(height: 10,),
              Column(
                children: const [
                  //TODO: aquí se van a cargar todas las direcciones que el usuario agregue en su perfil
                  SavedAddress(
                    color: Color(0xff62b621),
                    icon: Icons.house,
                    label: 'Casa',
                    address: 'Av. Larco 645, Miraflores, Lima',
                  ),
                  SavedAddress(
                    color: Color(0xff000000),
                    icon: Icons.business_center,
                    label: 'Trabajo',
                    address: 'Av. Los conquistadores 598, Miraflores, Lima',
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: CustomButton(text: 'Recojo en Tienda', width: double.infinity, height: 50, sizeText: 18,
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const PickUpInStoreScreen()))
                ),
              )
            ]
        );
      },
    );
  }
  void _serviceFee() {
    showStickyFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.35,
      maxHeight: 0.35,
      headerHeight: 70,
      context: context,
      anchors: [.2, 0.35, .35],
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      headerBuilder: (context, offset) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 0.3)
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(offset == 0.9 ? 0 : 40),
              topRight: Radius.circular(offset == 0.9 ? 0 : 40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FittedBox(
              child: Text('Cobro Tarifa de servicio',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),
              ),
            ),
          ),
        );
      },
      bodyBuilder: (context, offset) {
        return SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                child: Column(
                  children: [
                    Text('Esta tarifa ayuda a mantener la plataforma de Grandota, ya que cubre varios costos operativos que nos permiten ofrecer la mejor experiencia de compra posible.',style: GoogleFonts.poppins(),),
                    const SizedBox(height: 25),
                    CustomButton(text: 'Entendido', width: double.infinity, height: 50,  sizeText: 18, onPressed: () => Navigator.pop(context))
                  ],
                )
              ),
            ]
        );
      },
    );
  }
}
