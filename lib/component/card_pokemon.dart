import 'package:flutter/material.dart';

class CardPokemon extends StatelessWidget {
  final String amount, name;
  const CardPokemon({Key? key, required this.name, required this.amount})
      : super(key: key);

  @override
  Widget build(Object context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            amount,
            style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Image.asset(
            "assets/images/pikachu.png",
            width: 120.0,
            height: 120.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
