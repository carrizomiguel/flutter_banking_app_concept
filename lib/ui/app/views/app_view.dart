import 'package:banking_app/ui/home/home.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppContent();
  }
}

class AppContent extends StatelessWidget {
  const AppContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}