
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:solevad/screen/widget/responsive.dart';

class FifthSection extends StatefulWidget {
  const FifthSection({super.key});

  @override
  State<FifthSection> createState() => _FifthSectionState();
}

class _FifthSectionState extends State<FifthSection>
     {
  
  final List<Map<String, String>> testimonials = [
  {
    "quote":
        "Solevad Consulting transformed our infrastructure planning with their sustainable approach. Their green building solutions were not only innovative but also environmentally responsible.",
    "name": "Dr. Philip Adebayo",
    "position": "Head of Engineering, EcoBuild Africa"
  },
  {
    "quote":
        "Thanks to Solevad’s renewable energy team, we transitioned smoothly to solar power. The cost savings and environmental benefits have been tremendous.",
    "name": "Amaka Johnson",
    "position": "Managing Director, SunReach Ltd."
  },
  {
    "quote":
        "Solevad’s energy audit and optimization services helped us cut down our operational costs significantly while maintaining full compliance with sustainability standards.",
    "name": "Oluwatobi Ajayi",
    "position": "Facility Manager, CityMall Group"
  },
  {
    "quote":
        "With Solevad's help, we secured a power purchase agreement that slashed our long-term energy expenses. Their team is knowledgeable, professional, and results-driven.",
    "name": "Grace Okonkwo",
    "position": "COO, TechNova Solutions"
  },
  {
    "quote":
        "Solevad Consulting’s real estate advisory team provided us with valuable insights that ensured we made sound investment choices with minimal risk.",
    "name": "Emeka Nwosu",
    "position": "Investor & Real Estate Developer"
  },
];


  @override
  Widget build(BuildContext context) {
                var screenSize = MediaQuery.of(context).size;

      

    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 600,
     decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/black.jpg',),
                    fit: BoxFit.cover,
                   
                  ),
                ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          DefaultTextStyle(
            style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
            child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'TESTIMONIALS',
                speed: const Duration(milliseconds: 100),
                cursor: '|'
              ),
            ],
            totalRepeatCount: 2,
            repeatForever: true,
            pause: const Duration(milliseconds: 10000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
                    ),
          ),
                        Column(
                        children: [
                         
                           CarouselSlider(
                                  options: CarouselOptions(
                                    height: 250, // Adjust height as needed
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 0.9,
                                    autoPlayInterval: const Duration(seconds: 3),
                                  ),
                                  items: testimonials.map((testimonial) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '"${testimonial["quote"]}"',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            '- ${testimonial["name"]}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
              color: Colors.white70,
                                            ),
                                          ),
                                          Text(
                                            testimonial["position"]!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff32CD32),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                        ],
                                                  ),
                      ],
                    ),
            
          )
        : Container(
            height: 400,
           decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/black.jpg',),
                    fit: BoxFit.cover,
                   
                  ),
                ),
                  child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         DefaultTextStyle(
            style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
            child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'TESTIMONIALS',
                speed: const Duration(milliseconds: 100),
                cursor: '|'
              ),
            ],
            totalRepeatCount: 2,
            repeatForever: true,
            pause: const Duration(milliseconds: 10000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
                    ),
          ),

                        Column(
                          children: [
                           
                             CarouselSlider(
                                  options: CarouselOptions(
                                    height: 250, // Adjust height as needed
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 0.9,
                                    autoPlayInterval: const Duration(seconds: 3),
                                  ),
                                  items: testimonials.map((testimonial) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '"${testimonial["quote"]}"',
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            '- ${testimonial["name"]}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
              color: Colors.white70,
                                            ),
                                          ),
                                          Text(
                                            testimonial["position"]!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff32CD32),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                          ],
                        ),
                      ],
                    ),
           );
    
    
  }
}
