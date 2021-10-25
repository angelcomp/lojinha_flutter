
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {

  final String titulo;
  final bool ehPaginaCarrinho;

  AppBarCustomizada({required this.titulo, required this.ehPaginaCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: Text(titulo, style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _mudarIconeCarrinho(ehPaginaCarrinho),
      ],
    );
  }

  _mudarIconeCarrinho(bool ehPaginaCarrinho) {
    if(ehPaginaCarrinho) return Container();
    return BotaoCarrinho();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}