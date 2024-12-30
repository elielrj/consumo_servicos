import 'package:consumo_servicos/model/endereco/bairro/cidade/cidade.dart';

class Bairro {
  String _nome;
  Cidade _cidade;

  Bairro(this._nome, this._cidade);

  static Bairro BairroFactory(Map<String, dynamic> endereco) {
    return Bairro(
      endereco['bairro'],
      Cidade.CidadeFactory(endereco),
    );
  }

  @override
  String toString() {
    return "${_nome}, ${_cidade.toString()}";
  }
}
