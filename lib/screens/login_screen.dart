import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandota/pages/home_page.dart';
import 'package:grandota/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark
      ),
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 25,),
            Center(
              child: Container(
                height: 200,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/logo_dos.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xfff6f6f6),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: TextField(
                      controller: emailController,
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                          hintText: 'ejemplo@correo.com',hintStyle: GoogleFonts.poppins(fontSize: 16,color: Colors.black38),
                          labelText: 'Correo electrónico',labelStyle: GoogleFonts.poppins(fontSize: 16,color: Colors.black26),
                          prefixIcon: const Icon(Icons.email,color: Color(0xff62b621)),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xfff6f6f6),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: TextField(
                      controller: passwordController,
                      autocorrect: true,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                          hintText: '12345678',hintStyle: GoogleFonts.poppins(fontSize: 16,color: Colors.black38),
                          labelText: 'Contraseña',labelStyle: GoogleFonts.poppins(fontSize: 16,color: Colors.black26),
                          prefixIcon: const Icon(Icons.lock,color: Color(0xff62b621)),
                          suffixIcon: const Icon(Icons.remove_red_eye,),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: size.width,
                    height: 35,
                    margin: const EdgeInsets.only(top: 5,bottom: 20),
                    child: TextButton(
                      child: Text('¿Olvidaste tu contraseña?',style: GoogleFonts.poppins(color: Colors.black26,fontSize: 12),),
                      onPressed: (){
                        // Navigator.push(
                        //     context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                      },
                    ),
                  ),
                  CustomButton(
                    text: 'Iniciar sesión',
                    sizeText: 18,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    onPressed: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Center(
                child: Row(
                  children: <Widget>[
                    const Expanded(
                      child: Divider(
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        ' O inicia sesión con ',
                          style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.5,)
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      // Navigator.pushReplacement(
                      //     context, MaterialPageRoute(builder: (context) => MenuCupertino()));
                    },
                    borderRadius: const BorderRadius.all(
                        Radius.circular(50)
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12.5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(216, 216, 216, 0.9),
                              blurRadius: 15,
                              offset: Offset(3.0, 3.0)
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 25,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/facebook.png"),
                                  fit: BoxFit.contain)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text('Facebook',style: GoogleFonts.poppins()),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      // Navigator.pushReplacement(
                      //     context, MaterialPageRoute(builder: (context) => MenuCupertino()));
                      },
                    borderRadius: const BorderRadius.all(
                        Radius.circular(50)
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(216, 216, 216, 0.9),
                              blurRadius: 15,
                              offset: Offset(3.0, 3.0)
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/google.png"),
                                    fit: BoxFit.contain)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Google',style: GoogleFonts.poppins()),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                    '¿No tienes una cuenta?',
                    style: TextStyle(color: Colors.black54,fontSize: 15.0, fontWeight: FontWeight.w400, letterSpacing: 0.5,)
                ),
                TextButton(
                  onPressed: (){
                    // => Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => RegisterPage())),
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text(
                      'Registrate',
                      style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 15.0, fontWeight: FontWeight.w700, letterSpacing: 0.5,)
                  ),
                )
              ],
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
