import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grandota/screens/on_boarding_screens/on_boarding_one_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => const OnBoardingOneScreen()), (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/fondo.jpg'),fit: BoxFit.cover)
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xff000000).withOpacity(0.85),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.noRepeat)),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
