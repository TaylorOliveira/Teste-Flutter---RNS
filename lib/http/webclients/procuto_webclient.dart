import 'dart:convert';

import 'package:http/http.dart';
import 'package:teste_salcisne/http/web_client.dart';
import 'package:teste_salcisne/models/entity/produto_entity.dart';

class ProdutoWebClient {
  Future<List<Produto>> findAll() async {
    final Response response = await client.get(baseUrl + '/api/listProducts');
    final List<dynamic> decodeJson = jsonDecode(response.body);
    final List<Produto> produtos = List();
    for(Map<String, dynamic> produtoJson in decodeJson){
      produtos.add(Produto.fromJson(produtoJson));
    }
    return produtos;
  }
}
