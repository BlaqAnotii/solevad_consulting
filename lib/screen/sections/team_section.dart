import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TeamSection extends StatefulWidget {
  const TeamSection({super.key});

  @override
  State<TeamSection> createState() => _TeamSectionState();
}

class _TeamSectionState extends State<TeamSection> {

final services = [
    {
      "icon": 'assets/images/leroy.jpg',
      "title": "CHIEF EXECUTIVE"
    },
    {
      "icon": 'assets/images/leroy.jpg',
      "title": "OPERATION SERVICES"
    },
    {
      "icon": 'assets/images/leroy.jpg',
      "title": "BUSINESS DEVELOPMENT"
    },
    {
      "icon": 'assets/images/leroy.jpg',
      "title": "PROJECT DEVELOPMENT"
    },
  ];


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
    decoration: const BoxDecoration(
                 color: Colors.white,
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
                'Meet Our Team',
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
          height: 300,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final service = services[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 30
                ),
                child: Container(
                                width: 270,
                                margin: const EdgeInsets.only(right: 15,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    )),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 220,
                                          width: 270,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image:  DecorationImage(
                                              image: AssetImage(service["icon"]!),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(
                                        10,
                                      ),
                                      width: 300,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                         
                                         
                                          Text(
                                            service["title"]!,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                         
                                          
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
              );
            },
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