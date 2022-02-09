import 'package:flutter/material.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ButtonSchema(
            icon: Icons.payment,
            title: 'Payment',
            outlined: false,
          ),
          ButtonSchema(
            icon: Icons.swap_vert_rounded,
            title: 'Transfer',
            outlined: true,
          ),
        ],
      ),
    );
  }
}

class ButtonSchema extends StatelessWidget {
  const ButtonSchema(
      {Key? key,
      required this.icon,
      required this.title,
      required this.outlined})
      : super(key: key);

  final IconData icon;
  final String title;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: outlined ? Colors.white : Colors.black,
              size: 25,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: outlined ? Colors.white : Colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: outlined ? const Color(0xFF1B191A) : const Color(0xFFF5D8D0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: outlined
            ? const BorderSide(
                color: Colors.white,
                width: 2,
              )
            : null,
      ),
    );
  }
}
