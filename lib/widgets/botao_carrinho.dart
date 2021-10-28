import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

class BotaoCarrinho extends StatefulWidget {
  @override
  _BotaoCarrinhoState createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho').then((value) => setState(() {}));
      },
      child: Container(
        child: _visibilidadeIndicadorCarrinho(),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100)),
            color: Colors.white),
        alignment: Alignment.centerRight,
        height: 40,
        padding: const EdgeInsets.only(right: 20, left: 20),
      ),
    );
  }

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Stack(
        children: [
          const Image(
            height: 30,
            image: AssetImage('utilidades/assets/icones/carrinho.png'),
          ),
          IndicadorBotaoCarrinho()
        ],
      );
    }
    return const Image(
      height: 30,
      image: AssetImage('utilidades/assets/icones/carrinho.png'),
    );
  }
}
