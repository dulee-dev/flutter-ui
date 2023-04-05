import 'package:app/widgets/currency_card.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Hey there",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "say hi",
                        style: TextStyle(
                            fontSize: 18, color: Colors.brown.withOpacity(0.8)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(color: Colors.amber.shade100, fontSize: 48),
              ),
              Text(
                "\$12321313",
                style: TextStyle(color: Colors.amber.shade100, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Button(
                    text: "hi",
                    bgColor: Colors.black12,
                    textColor: Colors.tealAccent,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text("Btn"),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 42),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: Colors.pinkAccent.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const CurrencyCard(
                name: "Euro",
                unit: "EUR",
                icon: Icons.euro_rounded,
                amount: "3 123",
              ),
              const CurrencyCard(
                name: "BitCoin",
                unit: "BIT",
                icon: Icons.biotech,
                amount: "3 123",
                inversed: true,
              ),
              const CurrencyCard(
                name: "Euro",
                unit: "EUR",
                icon: Icons.euro_rounded,
                amount: "3 123",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
