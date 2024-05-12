import 'package:flutter/material.dart';

class AjustesPage extends StatelessWidget {
  const AjustesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: const Color(0XFFFCE5E6),
      color: Color.fromARGB(255, 139, 34, 205),
      height: MediaQuery.sizeOf(context).height - 202,
    );
  }
}
