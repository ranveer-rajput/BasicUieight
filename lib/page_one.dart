import 'package:flutter/material.dart';
import 'package:flutter_application_8/wiget.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 62),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Center(
              child: Text(
                "Log in to your existant account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w200),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const NewWidget(
                text: "Username",
                icon1: Icons.person_outline_sharp,
                icon2: Icons.abc,
                size: 0),
            const SizedBox(
              height: 14,
            ),
            const NewWidget(
                text: "Password",
                icon1: Icons.key,
                icon2: Icons.remove_red_eye_outlined,
                size: 25),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot password?",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ),
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
                  "Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.14,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  "Or continue with",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.14,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewWidgettwo(
                  icon: Icons.apple,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                NewWidgettwo(
                  icon: Icons.facebook_sharp,
                  color: Color.fromARGB(255, 5, 56, 98),
                ),
                SizedBox(
                  width: 15,
                ),
                NewWidgettwo(
                  icon: Icons.apple,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 46,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
