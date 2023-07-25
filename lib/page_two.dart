import 'package:flutter/material.dart';
import 'package:flutter_application_8/wiget.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 62),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            const Text(
              "Let's get started!",
              style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Center(
              child: Text(
                "Crate an account to get all features",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w200),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NewWidgetPageTwo(
                  text: 'Name',
                ),
                NewWidgetPageTwo(text: "Last Name"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const NewWidget(
                text: "Username",
                icon1: Icons.person_2_outlined,
                icon2: Icons.safety_check,
                size: 0),
            const SizedBox(
              height: 20,
            ),
            const NewWidget(
                text: "mail",
                icon1: Icons.mail_outline_outlined,
                icon2: Icons.abc,
                size: 0),
            const SizedBox(
              height: 20,
            ),
            const NewWidget(
                text: "Password", icon1: Icons.key, icon2: Icons.abc, size: 0),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.064,
              width: MediaQuery.of(context).size.width * 0.89,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 224, 201, 164),
                    Color.fromARGB(255, 225, 141, 82)
                  ], // You can set two colors here
                  begin: Alignment.centerLeft, // Starting point of the gradient
                  end: Alignment.centerRight, // Ending point of the gradient
                  // You can also use 'stops' to control the position of the colors
                  // stops: [0.3, 0.7], // For example, 0.3 would mean 30% along the gradient
                ),
              ),
              child: const Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidgetPageTwo extends StatelessWidget {
  final String text;
  const NewWidgetPageTwo({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.059,
      width: MediaQuery.of(context).size.width * 0.42,
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
        padding: const EdgeInsets.only(left: 25, top: 13),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w100, fontSize: 16),
        ),
      ),
    );
  }
}
