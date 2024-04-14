import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';


class SliderImage extends StatefulWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  _SliderImageState createState() => _SliderImageState();
}
class _SliderImageState extends State<SliderImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 15,),
        margin: const EdgeInsets.only(top: 15,bottom: 15),
        child: Carousel(
          images: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/tres.jpg'),fit: BoxFit.cover)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/category_one.png'),fit: BoxFit.cover)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/category_dos.png'),fit: BoxFit.cover)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/images/product.jpg'),fit: BoxFit.cover)
              ),
            ),
          ],
          dotSize: 0.0,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
        )
    );
  }
}