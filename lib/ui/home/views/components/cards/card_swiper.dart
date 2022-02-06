import 'package:banking_app/ui/home/views/components/cards/card_element.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const CardElement();
      },
      itemWidth: double.infinity,
      itemHeight: 250,
      layout: SwiperLayout.TINDER,
    );
  }
}