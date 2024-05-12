import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:web/widgets/appbar_widget.dart';
import 'package:web/widgets/bottom_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const EklAppBar(),
          Container(
            color: const Color(0XFFFCE5E6),
            height: MediaQuery.sizeOf(context).height - 202,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: const [
                EklItemMenu(
                  titulo: 'Entradas',
                  icone: Icon(
                    IconsaxPlusBroken.money_recive,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
                EklItemMenu(
                  titulo: 'Saidas',
                  icone: Icon(
                    IconsaxPlusBroken.money_send,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
                EklItemMenu(
                  titulo: 'Relatórios',
                  icone: Icon(
                    IconsaxPlusBroken.activity,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
                EklItemMenu(
                  titulo: 'Lembretes',
                  icone: Icon(
                    IconsaxPlusBroken.calendar_tick,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const EklBottomBarWidget(),
    );
  }
}

class EklItemMenu extends StatelessWidget {
  const EklItemMenu({
    super.key,
    required this.titulo,
    required this.icone,
  });
  final String titulo;
  final Icon icone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            Color(0XFF6229EE),
            Color(0XFF9267FE),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icone,
            const SizedBox(height: 10),
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
