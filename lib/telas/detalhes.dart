import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomizada(titulo: 'Detalhes'),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
        child: Text('Ir para carrinho'),
      ),
    );
  }
}
