// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EklTextFormField extends StatefulWidget {
  const EklTextFormField(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller});

  final String title;
  final String hint;
  final TextEditingController controller;

  @override
  State<EklTextFormField> createState() => _EklTextFormFieldState();
}

class _EklTextFormFieldState extends State<EklTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          Container(
            height: 50,
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: widget.hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
