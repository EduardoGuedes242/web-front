import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class EklBottomBarWidget extends StatefulWidget {
  const EklBottomBarWidget({super.key});

  @override
  State<EklBottomBarWidget> createState() => _EklBottomBarWidgetState();
}

class _EklBottomBarWidgetState extends State<EklBottomBarWidget> {
  int visit = 2;
  @override
  Widget build(BuildContext context) {
    return BottomBarDefault(
      items: items,
      backgroundColor: const Color(0XFFFCE5E6),
      color: const Color.fromARGB(255, 82, 81, 81),
      colorSelected: const Color(0XFF6229EE),
      indexSelected: visit,
      paddingVertical: 10,
      onTap: (int index) => setState(() {
        visit = index;
      }),
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
    icon: IconsaxPlusBold.home_2,
    title: 'Inicio',
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
