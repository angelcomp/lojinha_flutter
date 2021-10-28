

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndicadorBotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle
      ),
    );
  }

}