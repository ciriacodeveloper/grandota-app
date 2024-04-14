import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/pages/discount_page.dart';
import 'package:grandota/pages/favorites_page.dart';
import 'package:grandota/pages/home_page.dart';
import 'package:grandota/pages/my_orders_page.dart';
import 'package:grandota/screens/login_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo_tres.png'),
                    fit: BoxFit.fitWidth
                )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house_outlined, color: Color(0xff62b621),),
            title: Text('Inicio', style: GoogleFonts.poppins()),
            onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.add_shopping_cart_outlined, color: Color(0xff62b621),),
              title: Text('Mis pedidos', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MyOrdersPage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.local_offer_outlined, color: Color(0xff62b621),),
              title: Text('Descuentos', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const DiscountPage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.favorite_border_outlined, color: Color(0xff62b621),),
              title: Text('Favoritos', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const FavoritesPage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.person_outline, color: Color(0xff62b621),),
              title: Text('Mi perfil', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.person_outline, color: Color(0xff62b621),),
              title: Text('Mis direcciones', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.person_outline, color: Color(0xff62b621),),
              title: Text('Datos de facturación', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.share_outlined, color: Color(0xff62b621),),
              title: Text('Compartir aplicación', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.headset_mic_outlined, color: Color(0xff62b621),),
              title: Text('Centro de ayuda', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.info_outline, color: Color(0xff62b621),),
              title: Text('Términos y condiciones', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false,)
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Color(0xff62b621),),
            title: Text('Cerrar sesión', style: GoogleFonts.poppins()),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()),(route) => false,)
          ),
          const Divider(),
          ListTile(
              title: Text('Versión 1.1.1', style: GoogleFonts.poppins(color: Colors.grey,)),
          ),
          const Divider(),
          ListTile(
            title: Text("Hecho por Q'chua.pe", style: GoogleFonts.poppins(color: Colors.grey,)),
          ),
        ],
      ),
    );
  }
}

