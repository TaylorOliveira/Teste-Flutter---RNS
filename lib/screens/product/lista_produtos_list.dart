import 'package:flutter/material.dart';
import 'package:teste_salcisne/http/webclients/procuto_webclient.dart';
import 'package:teste_salcisne/models/entity/produto_entity.dart';

class ListaProdutosWidget extends StatelessWidget {

  final ProdutoWebClient _webClient = ProdutoWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Produtos')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body: FutureBuilder<List<Produto>>(
        future: _webClient.findAll(),
        // ignore: missing_return
        builder: (context, snapshot){
          final List<Produto> produtos = snapshot.data;
          return ListView.builder(
              itemCount: produtos.length,
              itemBuilder: (context, index){
            final Produto produto = produtos[index];
            return Card(
              child: ListTile(
                leading: Icon(Icons.gesture),
                title: Text(
                  produto.nome.toString(),
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Código: ${produto.codigo} - Estoque: ${produto.quantidade}',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}

