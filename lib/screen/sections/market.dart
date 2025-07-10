import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:go_router/go_router.dart';
import 'package:solevad/screen/widget/responsive.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  final services = [
    {
      "icon": 'assets/images/vector3.jpg',
      "title": "Energy Consulting",
      'index': "1",
    },
    {
      "icon": 'assets/images/vector.jpg',
      "title": "Community Development",
      'index': "2",
    },
    {
      "icon": 'assets/images/vector5.jpg',
      "title": "Business Consulting",
      'index': "3",
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
          image: AssetImage('assets/images/black.jpg'),
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
                  speed: Duration(milliseconds: 100),
                  cursor: '|',
                ),
              ],
              totalRepeatCount: 2,
              repeatForever: true,
              pause: Duration(milliseconds: 10000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              constraints: const BoxConstraints(maxWidth: 1300),
              child: Text(
                'At Solevad Consulting, we are dedicated to forging meaningful connections that not only drive growth but also promote sustainability across all facets of business and community life. We understand that true impact comes from collaboration and innovation, which is why we prioritize human-centered designs in our approach. By aligning our strategies with the unique needs of our clients and the communities they serve, we empower organizations to thrive while fostering a positive social and environmental footprint. Our commitment to creating these impactful connections ensures that every project contributes to a more sustainable future, benefiting both businesses and the communities they engage with.\n\nWe offer a diverse range of services across three core areas:',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: screenSize.width * 0.018,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.8,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),

          // Main card section
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  children: services
                      .map((service) => Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: ServiceCard(
                              icon: service["icon"]!,
                              title: service["title"]!,
                              index: service["index"]!,
                              isMobile: true,
                            ),
                          ))
                      .toList(),
                )
              : Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  alignment: WrapAlignment.center,
                  children: services
                      .map((service) => ServiceCard(
                            icon: service["icon"]!,
                            title: service["title"]!,
                            index: service["index"]!,
                          ))
                      .toList(),
                ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final String icon;
  final String title;
  final String index;
  final bool isMobile;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
    this.isMobile = false,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0;

  void _navigate() {
    if (widget.index == '1') {
      context.go('/services/energy-consulting');
    } else if (widget.index == '2') {
      context.go('/services/community-development');
    } else if (widget.index == '3') {
      context.go('/services/business-consulting');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (!widget.isMobile) {
          setState(() => _scale = 1.05);
        }
      },
      onExit: (_) {
        if (!widget.isMobile) {
          setState(() => _scale = 1.0);
        }
      },
      child: AnimatedScale(
        duration: const Duration(milliseconds: 300),
        scale: _scale,
        child: InkWell(
          onTap: _navigate,
          child: Stack(
            children: [
              Container(
                height: 250,
                width: widget.isMobile ? double.infinity : 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(widget.icon),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 70,
                      color: Colors.black.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: const BoxDecoration(
                              color: Color(0xff8B4513),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
