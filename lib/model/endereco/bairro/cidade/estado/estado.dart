class Estado {
  String _nome;
  String _uf;

  Estado(this._nome, this._uf);

  static Estado EstadoFactory(Map<String, dynamic> endereco) {
    return Estado(
      endereco['estado'],
      endereco['uf'],
    );
  }

  @override
  String toString() {
    return "$_nome - $_uf";
  }
}
