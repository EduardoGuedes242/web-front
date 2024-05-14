// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class EklRadio extends StatefulWidget {
  EklRadio({
    super.key,
    required this.primeiroValue,
    required this.primeiroTitulo,
    required this.segundoValue,
    required this.segundoTitulo,
  });
  bool primeiroValue;
  final String primeiroTitulo;
  bool segundoValue;
  final String segundoTitulo;

  @override
  State<EklRadio> createState() => EklRadioState();
}

class EklRadioState extends State<EklRadio> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                widget.primeiroValue = !widget.primeiroValue;
                if (widget.segundoValue) {
                  widget.segundoValue = !widget.segundoValue;
                }
              });
            },
            child: Row(
              children: [
                Checkbox(
                  value: widget.primeiroValue,
                  onChanged: (value) {
                    setState(() {
                      widget.primeiroValue = !widget.primeiroValue;
                      if (widget.segundoValue) {
                        widget.segundoValue = !widget.segundoValue;
                      }
                    });
                  },
                ),
                Text(
                  widget.primeiroTitulo,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                widget.segundoValue = !widget.segundoValue;
                if (widget.primeiroValue) {
                  widget.primeiroValue = !widget.primeiroValue;
                }
              });
            },
            child: Row(
              children: [
                Checkbox(
                  value: widget.segundoValue,
                  onChanged: (value) {
                    setState(() {
                      widget.segundoValue = !widget.segundoValue;
                      if (widget.primeiroValue) {
                        widget.primeiroValue = !widget.primeiroValue;
                      }
                    });
                  },
                ),
                Text(
                  widget.segundoTitulo,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
