import 'package:consumo_servicos/model/endereco/bairro/cidade/estado/estado.dart';

class Cidade {
  String _nome;
  Estado _estado;

  Cidade(this._nome, this._estado);

  static Cidade CidadeFactory(Map<String, dynamic> endereco) {
    return Cidade(
      endereco['localidade'],
      Estado.EstadoFactory(endereco),
    );
  }

  @override
  String toString() {
    return "$_nome, ${_estado.toString()}";
  }
}
