// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EklTextFormField extends StatefulWidget {
  const EklTextFormField({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.iconeDireita,
    this.tamanho,
  });

  final String title;
  final String hint;
  final TextEditingController controller;
  final IconButton? iconeDireita;
  final double? tamanho;

  @override
  State<EklTextFormField> createState() => _EklTextFormFieldState();
}

class _EklTextFormFieldState extends State<EklTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 84,
      width: widget.tamanho ?? MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                suffixIcon: widget.iconeDireita,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(221, 12, 0, 0),
                    width: 2,
                  ),
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

class EklTextFormFieldMultLines extends StatefulWidget {
  const EklTextFormFieldMultLines({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    this.iconeDireita,
    this.tamanho,
  });

  final String title;
  final String hint;
  final TextEditingController controller;
  final IconButton? iconeDireita;
  final double? tamanho;

  @override
  State<EklTextFormFieldMultLines> createState() =>
      _EklTextFormFieldMultLinesState();
}

class _EklTextFormFieldMultLinesState extends State<EklTextFormFieldMultLines> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 134,
      width: widget.tamanho ?? MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: TextFormField(
              controller: widget.controller,
              maxLines: 10,
              decoration: InputDecoration(
                suffixIcon: widget.iconeDireita,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(221, 12, 0, 0),
                    width: 2,
                  ),
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

class EklTextFormFieldDropDown extends StatefulWidget {
  const EklTextFormFieldDropDown({
    super.key,
    required this.title,
    required this.hint,
    required this.listaOpcoes,
  });

  final String title;
  final String hint;
  final List<DropdownMenuEntry> listaOpcoes;

  @override
  State<EklTextFormFieldDropDown> createState() =>
      _EklTextFormFieldDropDownState();
}

class _EklTextFormFieldDropDownState extends State<EklTextFormFieldDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
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
          SizedBox(
            height: 50,
            child: DropdownMenu(
              expandedInsets: EdgeInsets.all(0),
              hintText: widget.hint,
              dropdownMenuEntries: widget.listaOpcoes,
            ),
          ),
        ],
      ),
    );
  }
}
