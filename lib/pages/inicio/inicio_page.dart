import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: const Color(0XFFFCE5E6),
      color: Color.fromARGB(255, 34, 205, 194),
      height: MediaQuery.sizeOf(context).height - 202,
    );
  }
}
