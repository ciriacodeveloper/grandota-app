import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/pages/home_page.dart';
import 'package:grandota/widgets/custom_button.dart';

class ConfirmedOrderScreen extends StatelessWidget {
  const ConfirmedOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              Container(
                decoration: const BoxDecoration(
                    color: Color(0xffffffff)
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: const Color(0xff62b621),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 7.0,
                                offset: Offset(0.0, 5.0))
                          ],
                        ),
                        child: const Icon(Icons.check,size: 70,color: Color(0xffffffff)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 30),
                      child: Text('TU PEDIDO HA SIDO ENVIADO CORRECTAMENTE',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: const Color(0xff62b621),fontSize: 20),textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tu pedido es:',style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: const Color(0xff62b621).withOpacity(0.2),
                              child: Text('1',style: GoogleFonts.poppins(fontSize: 14)),
                            ),
                            const SizedBox(width: 10,),
                            Text('2 Pollos Enteros + chaufa',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Text('s/52.20',style: GoogleFonts.poppins(),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: const Color(0xff62b621).withOpacity(0.2),
                              child: Text('1',style: GoogleFonts.poppins(fontSize: 14)),
                            ),
                            const SizedBox(width: 10,),
                            Text('Gaseosa Pepsi 2Lts',style: GoogleFonts.poppins(),maxLines: 2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Text('s/8.00',style: GoogleFonts.poppins(),),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: const BoxDecoration(
                  color: Color(0xff62b621)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Entrega estimada: ',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),)),
                        const SizedBox(width: 10,),
                        Text('45 min',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Número de operación: ',style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),)),
                        const SizedBox(width: 10,),
                        Text('401',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(0),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white,
                            ),
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.download,color: Color(0xff62b621))),
                          ),
                          const Text('Descargar')
                        ],
                      ),
                    ),
                    const SizedBox(width: 25,),
                    InkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(0),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white,
                            ),
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,color: Color(0xff62b621))),
                          ),
                          const Text('Compartir')
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff62b621).withOpacity(0.2)
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.remove_red_eye,color: Color(0xff62b621),size: 20,),
                    ),
                    Expanded(child: Text('Una constacia de la operación llegará a tu correo registrado en la aplicaión.',style: GoogleFonts.poppins(height: 1.3,),))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(text: 'Ir a inicio', width: double.infinity, height: 50, sizeText: 18,
                    onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomePage()), (route) => false)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
