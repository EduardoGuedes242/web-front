import 'package:flutter/material.dart';
import 'package:web/pages/agenda/telas/incluir_agendamento.dart';
import 'package:web/widgets/float_action_buttom.dart';

class ConsultaAgendamentos extends StatefulWidget {
  const ConsultaAgendamentos({super.key});

  @override
  State<ConsultaAgendamentos> createState() => _ConsultaAgendamentosState();
}

class _ConsultaAgendamentosState extends State<ConsultaAgendamentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendamentos'),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: EklFloatActionButton(
        funcao: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const IncluirAgendamentoPage(),
            ),
          );
        },
      ),
    );
  }
}
