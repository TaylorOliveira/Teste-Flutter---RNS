import 'package:flutter/material.dart';
import 'file:///C:/Users/crp/Downloads/teste_flutter-master/teste_flutter-master/lib/screens/product/lista_produtos_list.dart';

void main() {
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
      home: ListaProdutosWidget(),
    );
  }
}
