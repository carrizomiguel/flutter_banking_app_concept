import 'package:flutter/material.dart';

class HomeCustomBottomNavBar extends StatefulWidget {
  const HomeCustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<HomeCustomBottomNavBar> createState() => _HomeCustomBottomNavBarState();
}

class _HomeCustomBottomNavBarState extends State<HomeCustomBottomNavBar> {
  final Map<String, Map<String, dynamic>> _items = const {
    'Home': {
      'icon': Icons.home,
    },
    'Notifications': {
      'icon': Icons.notifications,
    },
    'Statistics': {
      'icon': Icons.pie_chart,
    },
    'Profile': {
      'icon': Icons.person,
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
                            IconButton(
                              onPressed: () => _changeView(key),
                              icon: Icon(
                                value['icon'],
                                size: 28,
                              ),
                              color: _viewIs == key
                                  ? const Color(0xFFEBDCDA)
                                  : Colors.grey.shade600,
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
