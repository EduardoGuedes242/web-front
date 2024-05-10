// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:web/widgets/page/financeiro_page.dart';

class EklScaffold extends StatefulWidget {
  const EklScaffold({super.key});

  @override
  State<EklScaffold> createState() => _EklScaffoldState();
}

class _EklScaffoldState extends State<EklScaffold> {
  int itemSelecionado = 1;

  @override
  Widget build(BuildContext context) {
    List tela = [
      FinanceiroPage(),
      Container(
        height: MediaQuery.sizeOf(context).height,
        color: Colors.red,
      ),
      Container(
        height: MediaQuery.sizeOf(context).height,
        color: Colors.green,
      ),
      Container(
        height: MediaQuery.sizeOf(context).height,
        color: Colors.blue,
      ),
      Container(
        height: MediaQuery.sizeOf(context).height,
        color: Colors.orange,
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFFF),
      body: tela[itemSelecionado - 1],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width - 20,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0XFF161926),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildAnimatedIconButton(Icons.search, 1),
              buildAnimatedIconButton(Icons.calendar_month, 2),
              buildAnimatedIconButton(Icons.dashboard, 3),
              buildAnimatedIconButton(Icons.home, 4),
              buildAnimatedIconButton(Icons.settings, 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAnimatedIconButton(IconData iconData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          itemSelecionado = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        height: 50,
        padding: EdgeInsets.all(itemSelecionado == index ? 8.0 : 0.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: itemSelecionado == index
              ? Color.fromARGB(132, 97, 41, 238)
              : Colors.transparent,
        ),
        child: Icon(
          iconData,
          size: itemSelecionado == index ? 38 : 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
