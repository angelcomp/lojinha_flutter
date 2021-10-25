

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
        child: Container(
          child: const Image(
              height: 30,
              image: AssetImage('utilidades/assets/icones/carrinho.png')),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100)
            ),
            color: Colors.white
          ),
          alignment: Alignment.centerRight,
          height: 40,
          padding: const EdgeInsets.only(
            right: 20,
            left: 20
          ),
        ),
    );
  }
}