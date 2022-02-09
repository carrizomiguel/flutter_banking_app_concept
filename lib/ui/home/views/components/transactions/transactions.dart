import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          TopActionButtons(),
          SizedBox(height: 18),
          LastTransactionsItems(),
        ],
      ),
    );
  }
}

class TopActionButtons extends StatelessWidget {
  const TopActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Last Transactions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'All ►',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}

class LastTransactionsItems extends StatelessWidget {
  const LastTransactionsItems({Key? key}) : super(key: key);

  final Map<String, Map<String, dynamic>> _transactions = const {
    'Fast Food': {
      'time': '12:30 PM',
      'amount': '45.00',
      'currency': 'USD',
      'icon': '🍔',
    },
    // 'Carwash': {
    //   'time': '15:00 PM',
    //   'amount': '100.00',
    //   'currency': 'USD',
    //   'icon': '🚗',
    // },
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._transactions
            .map(
              (key, value) => MapEntry(
                key,
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(23),
                        child: Text(
                          value['icon'],
                          style: const TextStyle(
                            fontSize: 21,
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1F2323),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            key,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            value['time'],
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      RichText(
                        text: TextSpan(
                          text: '- ${value["amount"]}',
                          children: [
                            TextSpan(
                              text: ' ${value['currency']}',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .values
            .toList()
      ],
    );
  }
}
