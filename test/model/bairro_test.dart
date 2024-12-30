import 'package:consumo_servicos/model/endereco/bairro/bairro.dart';
import 'package:consumo_servicos/model/endereco/bairro/cidade/cidade.dart';
import 'package:consumo_servicos/model/endereco/bairro/cidade/estado/estado.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final estado = Estado('Santa Catarina', 'SC');
  final cidade = Cidade('Tubarão', estado);
  final bairro = Bairro('Centro', cidade);

  test("O resultado esperado é o formato: ", () {
    expect(
      bairro.toString(),
      'Centro, Tubarão, Santa Catarina - SC',
    );
  });
}
