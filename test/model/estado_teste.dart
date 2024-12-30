import 'package:consumo_servicos/model/endereco/bairro/cidade/estado/estado.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final estado = Estado('Santa Catarina', 'SC');

  test("Objeto tipo Estado.", () {
    expect(
      estado.toString(),
      'Santa Catarina - SC',
    );
  });
}
