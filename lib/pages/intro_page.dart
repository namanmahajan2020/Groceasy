import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerytute/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 20,
              top: 130,
            ),
            child: Image.asset('lib/images/shopping.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Fresh items everyday',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          GestureDetector(
            onTap:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
