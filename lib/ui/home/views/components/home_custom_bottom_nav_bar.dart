import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCustomBottomNavBar extends StatefulWidget {
  const HomeCustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<HomeCustomBottomNavBar> createState() => _HomeCustomBottomNavBarState();
}

class _HomeCustomBottomNavBarState extends State<HomeCustomBottomNavBar> {
  final Map<String, Map<String, dynamic>> _items = const {
    'Home': {
      'icon': 'assets/icons/home.svg',
    },
    'Notifications': {
      'icon': 'assets/icons/notification.svg',
    },
    'Statistics': {
      'icon': 'assets/icons/pie_chart.svg',
    },
    'Profile': {
      'icon': 'assets/icons/user.svg',
    },
  };

  String _viewIs = 'Home';

  void _changeView(String view) {
    setState(() {
      _viewIs = view;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 15,
          right: 40,
          left: 40,
        ),
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ..._items
                  .map((key, value) => MapEntry(
                        key,
                        Column(
                          children: [
                            InkWell(
                              onTap: () => _changeView(key),
                              child: SvgPicture.asset(
                                value['icon'],
                                height: 25,
                                color: _viewIs == key
                                    ? const Color(0xFFEBDCDA)
                                    : const Color(0xFF595758),
                              ),
                              borderRadius: BorderRadius.circular(99),
                            ),
                            const Spacer(),
                            AnimatedContainer(
                              height: 5,
                              width: _viewIs == key ? 35 : 0,
                              duration: const Duration(milliseconds: 150),
                              decoration: const BoxDecoration(
                                  color: Color(0xFFEBDCDA),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  )),
                            ),
                          ],
                        ),
                      ))
                  .values
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
