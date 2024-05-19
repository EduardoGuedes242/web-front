import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/pages/agenda/telas/consulta_agendamento.dart';
import 'package:web/pages/agenda/telas/consulta_clientes.dart';
import 'package:web/pages/agenda/telas/consulta_servicos.dart';
import 'package:web/widgets/item_menu.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFFCE5E6),
      height: MediaQuery.sizeOf(context).height - 202,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          EklItemMenu(
            titulo: 'Agenda',
            icone: const Icon(
              IconsaxPlusBroken.calendar_add,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ConsultaAgendamentos(),
                ),
              );
            },
          ),
          EklItemMenu(
            titulo: 'Relatórios',
            icone: const Icon(
              IconsaxPlusBroken.activity,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {},
          ),
          EklItemMenu(
            titulo: 'Clientes',
            icone: const Icon(
              IconsaxPlusBroken.people,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ConsultaClientesPage(),
                ),
              );
            },
          ),
          EklItemMenu(
            titulo: 'Serviços',
            icone: const Icon(
              IconsaxPlusBroken.bag_2,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ConsultaServicosPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
