


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DegradeElementoGridProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color.fromRGBO(178, 155, 178, 1)
          ]
        )
      ),
    );
  }

}