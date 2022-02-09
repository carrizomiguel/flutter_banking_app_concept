import 'package:flutter/material.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 5,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(15),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF222021),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/NikBD1ytCiozcS5nJaURYkkeSZ0zkPQJ1TRrVhDozDVIHT5XJooEnpw7shJ2quPAlWAm6UrGuw=w1200-h630-p-k-no-nu',
                    ),
                    radius: 25,
                    backgroundColor: Color(0xFF222021),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.lightBlue,
                      ))),
              Positioned(
                top: 3,
                right: 3,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
