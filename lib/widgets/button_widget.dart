import 'package:flutter/material.dart';

class EklButton extends StatelessWidget {
  const EklButton({super.key, required this.titulo});

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.sizeOf(context).width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color(0XFF6229EE),
            Color(0XFF9267FE),
          ],
        ),
      ),
      child: Center(
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
