import 'package:flutter/cupertino.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int index) {
        final movel = moveis[index];
        return Container(
          child: Text('$movel'),
        );
      },
    );
  }
}
