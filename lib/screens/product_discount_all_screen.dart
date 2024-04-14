import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/widgets/product_discount.dart';
import 'package:line_icons/line_icons.dart';

class ProductDiscountAllScreen extends StatefulWidget {
  const ProductDiscountAllScreen({Key? key}) : super(key: key);

  @override
  _ProductDiscountAllScreenState createState() => _ProductDiscountAllScreenState();
}

class _ProductDiscountAllScreenState extends State<ProductDiscountAllScreen> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                        title: Text('Descuentos',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700)),
                        subtitle: Text('Los mejores descuentos lo encuentras en Gandota',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 12),maxLines: 2,overflow: TextOverflow.ellipsis),
                        contentPadding: const EdgeInsets.only(left: 15),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                        ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                        ProductDiscount(width: width,marginBottom: 15,heightImage: 200),
                      ],
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}
