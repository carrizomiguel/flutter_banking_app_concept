import 'package:banking_app/ui/home/views/components/cards/card_element.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _cards = const [
    {
      'bank': 'assets/logos/visa.svg',
      'type': 'Credit Card',
      'number': '**** **** 2499 4194',
      'date': '08/23',
    },
    {
      'bank': 'assets/logos/mastercard.svg',
      'type': 'Debit Card',
      'number': '**** **** 5923 8429',
      'date': '02/25',
    },
    {
      'bank': 'assets/logos/visa.svg',
      'type': 'Credit Card',
      'number': '**** **** 3289 7502',
      'date': '08/22',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return CardElement(
          card: _cards[index],
        );
      },
      itemWidth: double.infinity,
      itemHeight: 270,
      layout: SwiperLayout.TINDER,
    );
  }
}
