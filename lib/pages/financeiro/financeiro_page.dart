import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/pages/financeiro/telas/lembretes.dart';
import 'package:web/pages/financeiro/telas/registrar_entrada.dart';
import 'package:web/pages/financeiro/telas/registrar_saida_page.dart';
import 'package:web/widgets/item_menu.dart';

class FinanceiroPage extends StatelessWidget {
  const FinanceiroPage({
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
            titulo: 'Entradas',
            icone: const Icon(
              IconsaxPlusBroken.money_recive,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegistrarEntradaPage(),
                ),
              );
            },
          ),
          EklItemMenu(
            titulo: 'Saidas',
            icone: const Icon(
              IconsaxPlusBroken.money_send,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegistrarSaidaPage(),
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
              funcao: () {
                print('object');
              }),
          EklItemMenu(
            titulo: 'Lembretes',
            icone: const Icon(
              IconsaxPlusBroken.calendar_tick,
              size: 48,
              color: Colors.white,
            ),
            funcao: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LembretesPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
