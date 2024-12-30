class Cep {
  String _cep;

  Cep(this._cep);

  static Cep CepFactory(Map<String, dynamic> endereco) {
    return Cep(endereco['cep']);
  }

  @override
  String toString() {
    return _cep;
  }
}
