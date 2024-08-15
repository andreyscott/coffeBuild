import 'package:coffe/widgets/button.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // large banner image

              Image.asset(
                'lib/assets/images/bannercoffee1.png',
                width: 300,
                height: 350,
              ),

              const SizedBox(height: 20),

              Text(
                'Welcome to our Coffee Shop',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.tertiary),
              ),

              const SizedBox(height: 10),

              const Text(
                'We serve the best coffee in town',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  text: 'Get Started'),

              // Bold greeting Text

              // smaller description text

              // button
            ],
          ),
        ),
      ),
    );
  }
}
