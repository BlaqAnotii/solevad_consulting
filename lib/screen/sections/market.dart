import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {



  final services = [
    {
      "icon": 'assets/images/vector.jpg',
      "title": "Sustainable Infrastructure"
    },
    {
      "icon": 'assets/images/vector2.jpg',
      "title": "Renewable Energy Services"
    },
    {
      "icon": 'assets/images/vector3.jpg',
      "title": "Energy Management Consulting"
    },
    {
      "icon": 'assets/images/vector4.jpg',
      "title": "Energy Procurement"
    },
    {
      "icon": 'assets/images/vector5.jpg',
      "title": "Real Estate Consulting Services"
    },
  ];



  @override
  Widget build(BuildContext context) {
           var screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
    decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/black.jpg',),
                    fit: BoxFit.cover,
                   
                  ),
                ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                'Our Services',
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
      
          const SizedBox(height: 32),
          // Icons row
         SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final service = services[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                CircleAvatar(
                  backgroundImage:  AssetImage(service["icon"]!),
                radius: 70,
                ),
                                        const SizedBox(height: 12),
                    Text(
                      service["title"]!,
                      textAlign: TextAlign.center,
                      style:  const TextStyle(
                              color: Colors.white,
                           fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                            ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
          const SizedBox(height: 32),
         ElevatedButton(
                        onPressed: () {
                          //context.go('/Our_Services');
                          context.go('/services');
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