import 'package:estacione_app/app/models/veiculo.dart';
// import 'package:flutter/material.dart';


class VeiculoController {
  final List<Veiculo> veiculos = [];

  void addVeiculo(String placa, String marca, String modelo) {
    final newVeiculo = Veiculo(placa: placa, marca: marca, modelo: modelo);
    veiculos.add(newVeiculo);
  }
}