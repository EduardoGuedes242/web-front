import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class EklFloatActionButton extends StatelessWidget {
  const EklFloatActionButton({super.key, required this.funcao});

  final Function funcao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcao(),
      child: Container(
        height: 48,
        width: 110,
        decoration: BoxDecoration(
          color: const Color(0XFF6229EE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              Text(
                'Novo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                IconsaxPlusLinear.add,
                size: 32,
                color: Colors.white,
              ),
              SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
