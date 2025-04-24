import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;

    return 
    
    Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
    decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/black.jpg',),
                    fit: BoxFit.cover,
                   
                  ),
                ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           DefaultTextStyle(
  style:  TextStyle(
 color: Colors.white,
  fontFamily: 'Mulish',

           fontSize: screenSize.width /35,
              fontWeight: FontWeight.w700,  ),
  child: AnimatedTextKit(
    animatedTexts: [
      
      WavyAnimatedText('Get Started With Solevad Consulting', 
              speed: const Duration(milliseconds: 200),
      ),
    ],
    isRepeatingAnimation: true,
    // onTap: () {
    //   print("Tap Event");
    // },
  ),
),
           
          
          const SizedBox(height: 32),
         ElevatedButton(
                        onPressed: () {
                          //context.go('/Our_Services');
                          context.go('/book-consultation');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                          fixedSize: const Size(190, 45),
                          backgroundColor: const Color(0xff4779A3),
                        ),
                        child: const Text(
                          'Book a Consultation',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
        ],
      ),
    );
  }
}