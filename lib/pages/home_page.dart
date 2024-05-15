import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:web/pages/agenda/agenda_page.dart';
import 'package:web/pages/ajustes/ajustes_page.dart';
import 'package:web/pages/financeiro/financeiro_page.dart';
import 'package:web/pages/suporte/suporte_page.dart';
import 'package:web/widgets/appbar_widget.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int telaSelecionada = 3;

  List telas = [
    const AjustesPage(),
    const FinanceiroPage(),
    const AgendaPage(),
    const SuportePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const EklAppBar(),
          telas[telaSelecionada],
        ],
      ),
      bottomNavigationBar: BottomBarDefault(
        items: items,
        backgroundColor: const Color(0XFFFCE5E6),
        color: const Color.fromARGB(255, 82, 81, 81),
        colorSelected: const Color(0XFF6229EE),
        indexSelected: telaSelecionada,
        paddingVertical: 10,
        onTap: (int index) => setState(() {
          telaSelecionada = index;
        }),
      ),
    );
  }
}

const List<TabItem> items = [
  TabItem(
    icon: IconsaxPlusBold.setting_2,
    title: 'Ajustes',
  ),
  TabItem(
    icon: IconsaxPlusBold.dollar_square,
    title: 'Financeiro',
  ),
  TabItem(
    icon: IconsaxPlusBold.calendar,
    title: 'Agenda',
  ),
  TabItem(
    icon: Icons.help,
    title: 'Ajuda',
  ),
];
