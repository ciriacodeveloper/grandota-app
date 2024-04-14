import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedAddress extends StatelessWidget {
  final IconData icon;
  final String label;
  final String address;
  final Color color;
  const SavedAddress({Key? key, required this.icon, required this.label, required this.address, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
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
      child: Row(
        children: [
          Icon(icon,color: color),
          const SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: GoogleFonts.poppins(fontSize: 14,color: color),),
                Text(address, style: GoogleFonts.poppins(color: color,fontSize: 14,fontWeight: FontWeight.w700),maxLines: 2,overflow: TextOverflow.ellipsis),
              ],
            ),
          )
        ],
      ),
    );
  }
}
