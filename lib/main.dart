import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/paleta_cores.dart';
import 'package:lojinha_alura/telas/carrinho.dart';
import 'package:lojinha_alura/telas/detalhes.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/grid_produtos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/carrinho': (context) => Carrinho()},
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: PaletaCores().lilas,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black),

          headline2: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  final List moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(titulo: 'Lojinha', ehPaginaCarrinho: false),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Produtos'),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(child: GridProdutos(moveis: moveis))
        ],
      ),
    );
  }
}
