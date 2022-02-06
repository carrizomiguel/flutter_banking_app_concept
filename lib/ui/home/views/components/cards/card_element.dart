import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardElement extends StatelessWidget {
  const CardElement({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                card['bank'],
                height: 60,
                color: Colors.black87,
              ),
              const Spacer(),
              Text(
                card['date'],
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card['type'],
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    card['number'],
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(17),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFABBBCC),
                  shape: BoxShape.circle,
                ),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF8D8CB),
              Color(0xFF8CAACD),
            ]),
        borderRadius: BorderRadius.circular(45),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
