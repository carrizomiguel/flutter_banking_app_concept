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
    return const Scaffold(
      bottomNavigationBar: HomeCustomBottomNavBar(),
    );
  }
}