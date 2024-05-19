// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web/common/dados.dart';

class EklAppBar extends StatefulWidget {
  const EklAppBar({super.key});

  @override
  State<EklAppBar> createState() => _EklAppBarState();
}

class _EklAppBarState extends State<EklAppBar> {
  bool exibirValor = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 140,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: const LinearGradient(
          colors: [
            Color(0XFF6229EE),
            Color(0XFF9267FE),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ola, $usuario',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Studio: $localStudio',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset(
                'assets/icons/notification-icon.svg',
                height: 32,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 38,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 14),
          Text(
            'Faturamento do Mês',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                'R\$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 8),
              if (exibirValor)
                Text(
                  faturamentoMEs.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                )
              else
                Text(
                  '****',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    exibirValor = !exibirValor;
                  });
                },
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
