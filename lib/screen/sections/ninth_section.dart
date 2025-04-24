import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NinthSection extends StatefulWidget {
  const NinthSection({super.key});

  @override
  State<NinthSection> createState() => _NinthSectionState();
}

class _NinthSectionState extends State<NinthSection> {
  @override
  Widget build(BuildContext context) {
                    var screenSize = MediaQuery.of(context).size;

    return 
    
    Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
    decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/white.jpg',),
                    fit: BoxFit.cover,
                   
                  ),
                ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           DefaultTextStyle(
  style:  TextStyle(
 color: Color(0xff32CD32),
           fontSize: screenSize.width /35,
              fontWeight: FontWeight.w500,  ),
  child: AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText('Why Choose Us?', 
              speed: const Duration(milliseconds: 200),
      ),
    ],
    isRepeatingAnimation: true,
    // onTap: () {
    //   print("Tap Event");
    // },
  ),
),
           
          const SizedBox(height: 16),
           const Text(
            "At the heart of our mission lies a commitment to expertise and experience that\nensures we provide top-tier solutions. We understand that every challenge is unique, which\nis why we focus on delivering customized solutions designed specifically to address the individual\nneeds of our clients. Sustainability is at the core of everything we do, as we prioritize\neco-friendly practices and long-term impact with a strong sustainability focus.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
           fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 2.0,
            ),
          ),
          const SizedBox(height: 32),
         ElevatedButton(
                        onPressed: () {
                          //context.go('/Our_Services');
                          context.go('/about-us/our-mission&vision&values');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(170, 45),
                          backgroundColor: const Color(0xff4779A3),
                        ),
                        child: const Text(
                          'Learn more',
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