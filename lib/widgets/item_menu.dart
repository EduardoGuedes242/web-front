import 'package:flutter/material.dart';

class EklItemMenu extends StatelessWidget {
  const EklItemMenu({
    super.key,
    required this.titulo,
    required this.icone,
    required this.funcao,
  });
  final String titulo;
  final Icon icone;
  final Function funcao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcao(),
      child: Container(
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
      ),
    );
  }
}

class EklMiniItemMenu extends StatelessWidget {
  const EklMiniItemMenu({super.key, required this.titulo});

  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
        ),
        Text(
          titulo,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
