import 'package:flutter/material.dart';

class EklButton extends StatelessWidget {
  const EklButton({
    super.key,
    required this.titulo,
    required this.funcao,
  });

  final String titulo;
  final Function funcao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcao(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        height: 48,
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
      ),
    );
  }
}

class EklButton2 extends StatelessWidget {
  const EklButton2({
    super.key,
    required this.titulo,
    required this.funcao,
  });

  final String titulo;
  final Function funcao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width * 0.45,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(
                    255, 98, 41, 238)), // Cor de fundo do botão
            iconColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 98, 41, 238)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            )),
        onPressed: () {
          funcao();
        },
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
