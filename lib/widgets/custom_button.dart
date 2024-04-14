import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double sizeText;
  final double width;
  final double height;
  final VoidCallback onPressed;
  const CustomButton({Key? key, required this.text, required this.width, required this.height, required this.onPressed, required this.sizeText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xff62b621),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Center(child: Text(text,style: GoogleFonts.poppins(color: Colors.white,fontSize: sizeText,))),
      ),
    );
  }
}
