import 'package:banking_app/ui/home/views/components/cards/card_swiper.dart';
import 'package:banking_app/ui/home/views/components/home_custom_app_bar.dart';
import 'package:banking_app/ui/home/views/components/home_custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            HomeCustomAppBar(),
            CardSwiper(),
          ],
        ),
      ),
      bottomNavigationBar: const HomeCustomBottomNavBar(),
    );
  }
}