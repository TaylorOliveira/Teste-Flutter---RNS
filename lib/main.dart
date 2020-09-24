import 'package:flutter/material.dart';
import 'package:teste_salcisne/lista_produtos/presentation/ui/lista_produtos_page.dart';

import 'http/web_client.dart';

void main() {
  findAll().then((value) => print("Lista de produtos $value"));
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListaProdutosPage(),
    );
  }
}
