import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:solevad/screen/widget/responsive.dart';

class NinthSection extends StatefulWidget {
  const NinthSection({super.key});

  @override
  State<NinthSection> createState() => _NinthSectionState();
}

class _NinthSectionState extends State<NinthSection> {
  @override
  Widget build(BuildContext context) {
                    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
          ?  Container(
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
 fontFamily: 'Mulish',
 
           fontSize: screenSize.width /25,
              fontWeight: FontWeight.w700,  ),
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
                   Center(
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900), // Constrain width for better block layout
    child: Text(
      'At the heart of our mission lies a commitment to expertise and experience that ensures we provide top-tier solutions. We understand that every challenge is unique, which is why we focus on delivering customized solutions designed specifically to address the individual needs of our clients. Sustainability is at the core of everything we do, as we prioritize eco-friendly practices and long-term impact with a strong sustainability focus.',
      textAlign: TextAlign.justify, // This aligns both edges
      style: TextStyle(
        fontSize: screenSize.width * 0.028, // Adjusted for readability
        color: Colors.black,
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
    ),
  ),
),
           
          const SizedBox(height: 32),
         ElevatedButton(
                        onPressed: () {
                          //context.go('/Our_Services');
                          context.go('/about-us');
                        },
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
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
    ) 
    :
    
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
 color: const Color(0xff32CD32),
 fontFamily: 'Mulish',
 
           fontSize: screenSize.width /35,
              fontWeight: FontWeight.w700,  ),
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
             Center(
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1300), // Constrain width for better block layout
    child: Text(
      'At the heart of our mission lies a commitment to expertise and experience that ensures we provide top-tier solutions. We understand that every challenge is unique, which is why we focus on delivering customized solutions designed specifically to address the individual needs of our clients. Sustainability is at the core of everything we do, as we prioritize eco-friendly practices and long-term impact with a strong sustainability focus.',
      textAlign: TextAlign.justify, // This aligns both edges
      style: TextStyle(
        fontSize: screenSize.width * 0.018, // Adjusted for readability
        color: Colors.black,
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
    ),
  ),
),
      
          const SizedBox(height: 32),
          // InkWell(
          //   onTap: () {
          //      context.go('/about-us');
          //   },
          //   child: const Icon(
          //     Iconsax.arrow_circle_right_bold,
          //   size: 60,
          //   color:   Color(0xff4779A3),
          //   ),
          // ),
         ElevatedButton(
                        onPressed: () {
                          //context.go('/Our_Services');
                          context.go('/about-us');
                        },
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
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