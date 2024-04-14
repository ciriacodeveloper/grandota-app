import 'package:flutter/material.dart';
import 'package:grandota/widgets/section_all.dart';

class SectionAllList extends StatefulWidget {
  const SectionAllList({Key? key}) : super(key: key);

  @override
  _SectionAllListState createState() => _SectionAllListState();
}

class _SectionAllListState extends State<SectionAllList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SectionAll(text: 'Al cilindro', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Pastas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Saltados', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Ensaladas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Hamburguesas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Sandwichs', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Salchipapas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Pollos', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Tacos', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Piqueos', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Guarniciones', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Jugos de fruta', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Refrescantes', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Té helado', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Otras bebidas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Helados artesanales', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Milkshakes', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Tortas y pyes artesanales', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Postres especiales', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'All American Waffles', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_one.png')),
          SectionAll(text: 'Cafetería', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Chocolate caliente', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Pisco', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Ron', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Vodka', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Gin', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Tequila', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Especiales', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Vinos', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
          SectionAll(text: 'Cervezas', description: 'Las mejores comidas, bebidas y postres a tu mesa.', image: AssetImage('assets/images/category_dos.png')),
        ],
      ),
    );
  }
}