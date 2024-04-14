import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones',style: GoogleFonts.poppins(color: const Color(0xff62b621)),),
        backgroundColor: const Color(0xff000000),
        iconTheme: const IconThemeData( color: Color(0xff62b621) ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                maxRadius: 60,
                backgroundColor: Color(0xff62b621),
                child: Icon(LineIcons.bell,size: 80,color: Colors.white,)
            ),
            const SizedBox(height: 20,),
            Text('No tienes notificaciones.', style: GoogleFonts.poppins(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
