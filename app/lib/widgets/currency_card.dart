import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String unit;
  final IconData icon;
  final String amount;
  final bool inversed;

  final Color bgColor;
  final Color textColor;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.unit,
    required this.icon,
    required this.amount,
    this.inversed = false,
  })  : bgColor = !inversed ? Colors.black87 : Colors.white,
        textColor = !inversed ? Colors.white : Colors.black87;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: bgColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 42, color: textColor),
              ),
              Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(color: textColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    unit,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ],
          ),
          Transform.scale(
            scale: 2,
            child: Transform.translate(
              offset: const Offset(5, 10),
              child: Icon(
                icon,
                color: textColor,
                size: 90,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
