import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: const Color(0XFFFCE5E6),
      color: Color.fromARGB(255, 205, 34, 42),
      height: MediaQuery.sizeOf(context).height - 202,
    );
  }
}
