import 'package:estacione_app/app/controllers/VeiculoController.dart';
import 'package:flutter/material.dart';


class VeiculoCadastrar extends StatelessWidget {
  final VeiculoController controller = VeiculoController();
  final TextEditingController placaController = TextEditingController();
  final TextEditingController marcaController = TextEditingController();
  final TextEditingController modeloController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar veiculo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: placaController,
              decoration: InputDecoration(labelText: 'Placa'),
            ),
            TextField(
              controller: marcaController,
              decoration: InputDecoration(labelText: 'Marca'),
            ),
            TextField(
              controller: modeloController,
              decoration: InputDecoration(labelText: 'Modelo'),
            ),
             TextField(
              controller:categoriaController,
              decoration: InputDecoration(labelText: 'categoria'),
            ),
            SizedBox(height: 16),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.12);
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              onPressed: () { 
                  botaoPrincipalClicado();
               },
              child: Text('Cadastrar')
            ),
            SizedBox(height: 16),
            Text('Veículos Registrados:'),
            Expanded(
              child: ListView.builder(
                itemCount: controller.veiculos.length,
                itemBuilder: (context, index) {
                  final veiculo = controller.veiculos[index];
                  return ListTile(
                    title: Text('Placa: ${veiculo.placa}'),
                    subtitle: Text('Marca: ${veiculo.marca}, Modelo: ${veiculo.modelo}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  botaoPrincipalClicado(){
    print("${placaController.text},${marcaController.text},${modeloController.text},${categoriaController.text},");
  }
}
