import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/screens/order_detail_screen.dart';
import 'package:page_transition/page_transition.dart';

class Order extends StatefulWidget {
  final String status;
  final String method;
  final Color color;
  const Order({Key? key, required this.status, required this.method, required this.color}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    int order = 401;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Pedido N° $order',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w700,),overflow: TextOverflow.ellipsis)),
              InkWell(
                child: Text('Ver detalle',style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700, color: const Color(0xff62b621))),
                onTap: () => Navigator.push(context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 600),
                        child: const OrderDetailScreen())
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // TODO: estados: aceptado, en camino, entregado y cancelado
              Expanded(child: Text('Pedido ${widget.status}',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w700,color: widget.color))),
              Text('S/ 58.2',style: GoogleFonts.poppins(fontSize: 16,)),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // TODO: HAY DOS METODOS DE ENTREGA:  DELIVERY O RECOJO
              Expanded(child: Text('Entrega ${widget.method}',style: GoogleFonts.poppins(fontSize: 16,))),
              Text('2022-04-02  21:49:37',style: GoogleFonts.poppins(fontSize: 14,)),
            ],
          ),
        ],
      ),
    );
  }
}
