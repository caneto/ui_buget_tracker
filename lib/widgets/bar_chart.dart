import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double maxBarHeight = 220;
    return Column(
      children: [
        const Text(
          "Despesas semanais",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            const Text(
              "Nov 01, 2022 - Nov 15, 2022",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          // as barras e todas dados depende do dados dinamico, isso é apenas um exemplo
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for(int i=30; i<maxBarHeight; i += 30)
            Column(
              children: [
                Text(
                  "R\$$i",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6),
                Container(
                  height: i.toDouble(),
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Ter",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
