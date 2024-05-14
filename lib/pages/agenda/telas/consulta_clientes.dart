import 'package:flutter/material.dart';
import 'package:web/pages/agenda/telas/cadastro_clientes.dart';
import 'package:web/widgets/float_action_buttom.dart';

class ConsultaClientesPage extends StatelessWidget {
  const ConsultaClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: EklFloatActionButton(
        funcao: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CadastrarClientesPage(),
            ),
          );
        },
      ),
    );
  }
}
