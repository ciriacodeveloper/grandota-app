import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/pages/home_page.dart';
import 'package:grandota/screens/on_boarding_screens/on_boarding_tres_screen.dart';
import 'package:grandota/widgets/custom_button.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingDosScreen extends StatelessWidget {
  const OnBoardingDosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200)),
                  image: DecorationImage(image: AssetImage('assets/images/dos.jpg'),fit: BoxFit.cover)
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Somos un espacio de insumos excelentes, unidos a un ambiente acogedor, convergen en una experiencia única cada vez.', style: GoogleFonts.poppins(height: 1.5,fontSize: 16),textAlign: TextAlign.center),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 7,
                  width: 10,
                  decoration: BoxDecoration(
                      color: const Color(0xffd7d7d7),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  margin: const EdgeInsets.only(right: 10),
                ),
                Container(
                  height: 7,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color(0xff62b621),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  margin: const EdgeInsets.only(right: 10),
                ),
                Container(
                  height: 7,
                  width: 10,
                  decoration: BoxDecoration(
                      color: const Color(0xffd7d7d7),
                      borderRadius: BorderRadius.circular(100)
                  ),
                  margin: const EdgeInsets.only(right: 10),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomButton(
                  text: 'Siguiente', width: MediaQuery.of(context).size.width, height: 50, sizeText: 18,

                  onPressed: () => Navigator.pushAndRemoveUntil(context, PageTransition(type: PageTransitionType.fade, child: const OnBoardingTresScreen()), (route) => false),
              ),
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/2,
                padding: const EdgeInsets.all(15),
                child: Text('Saltar',style: GoogleFonts.poppins(color: const Color(0xff62b621),fontSize: 18)),
              ),
              onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage()),(route) => false),
            )
          ],
        ),
      ),
    );
  }
}
