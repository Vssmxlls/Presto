import 'package:flutter/material.dart';

class PrestoTitle extends StatelessWidget {
  const PrestoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/presto_logo2.jpeg", width: 90, height: 200),

        const SizedBox(width: 10),
        const Text(
          "PRESTO",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
