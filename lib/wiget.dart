import 'package:flutter/material.dart';

class NewWidgettwo extends StatelessWidget {
  final IconData icon;
  final Color color;
  const NewWidgettwo({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 60, 85, 230),
            Color.fromARGB(255, 91, 72, 217)
          ], // You can set two colors here
          begin: Alignment.centerLeft, // Starting point of the gradient
          end: Alignment.centerRight, // Ending point of the gradient
          // You can also use 'stops' to control the position of the colors
          // stops: [0.3, 0.7], // For example, 0.3 would mean 30% along the gradient
        ),
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;
  final IconData icon1;
  final IconData icon2;
  final double size;
  const NewWidget({
    super.key,
    required this.text,
    required this.icon1,
    required this.icon2,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.064,
      width: MediaQuery.of(context).size.width * 0.89,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 60, 85, 230),
            Color.fromARGB(255, 91, 72, 217)
          ], // You can set two colors here
          begin: Alignment.centerLeft, // Starting point of the gradient
          end: Alignment.centerRight, // Ending point of the gradient
          // You can also use 'stops' to control the position of the colors
          // stops: [0.3, 0.7], // For example, 0.3 would mean 30% along the gradient
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: [
            Icon(
              icon1,
              color: Colors.white24,
              size: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            const Expanded(child: SizedBox()),
            Icon(
              icon2,
              size: size,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
