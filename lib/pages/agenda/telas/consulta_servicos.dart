import 'package:flutter/material.dart';
import 'package:web/pages/agenda/telas/cadastro_servicos.dart';
import 'package:web/widgets/float_action_buttom.dart';

class ConsultaServicosPage extends StatelessWidget {
  const ConsultaServicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviços'),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: EklFloatActionButton(
        funcao: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CadastrarServicosPage(),
            ),
          );
        },
      ),
    );
  }
}
