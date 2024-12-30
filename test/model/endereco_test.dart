import 'package:consumo_servicos/model/endereco/bairro/bairro.dart';
import 'package:consumo_servicos/model/endereco/bairro/cidade/cidade.dart';
import 'package:consumo_servicos/model/endereco/bairro/cidade/estado/estado.dart';
import 'package:consumo_servicos/model/endereco/cep.dart';
import 'package:consumo_servicos/model/endereco/endereco.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final estado = Estado('Santa Catarina', 'SC');
  final cidade = Cidade('Tubarão', estado);
  final bairro = Bairro('Centro', cidade);
  final cep = Cep('88701050');
  final endereco = Endereco(cep, bairro, 'Coronel Cabral', '458');

  test("O Endereco deve ser formatado como: ", () {
    expect(
      endereco.toString(),
      'Coronel Cabral, Número 458\n'
      'Centro, Tubarão, Santa Catarina - SC\n'
      'CEP 88701050',
    );
  });
}
