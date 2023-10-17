import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),
            // shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/salmon_egg.png'),
            ),
            // title
            const SizedBox(height: 25),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            // sub title
            const SizedBox(height: 10),
            Text(
              "Feel the taste of the most populer japanese food from anywhere and anytime",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.green[200],
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to menu apge
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
