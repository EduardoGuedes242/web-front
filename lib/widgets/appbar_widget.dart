// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web/common/dados.dart';

class EklAppBar extends StatelessWidget {
  const EklAppBar({super.key, required this.iconBack});
  final bool iconBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 70,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: const LinearGradient(
          colors: [
            Color(0XFF6229EE),
            Color(0XFF9267FE),
          ],
        ),
      ),
      child: Row(
        children: [
          if (iconBack)
            Row(
              children: [
                IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 8),
              ],
            )
          else
            SizedBox(),
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
    );
  }
}
