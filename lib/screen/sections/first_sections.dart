
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:solevad/constant/color.dart';
import 'package:solevad/screen/widget/responsive.dart';
import 'package:solevad/screen/widget/text_transform.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../widget/text_reveal.dart';

class FirstSection extends StatefulWidget {
  const FirstSection({super.key});

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> textRevealAnimation;
  late Animation<double> textOpacityAnimation;
  late Animation<double> descriptionAnimation;



  
  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1700,
      ),
      reverseDuration: const Duration(
        milliseconds: 375,
      ),
    );

    textRevealAnimation = Tween<double>(begin: 60.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.2, curve: Curves.easeOut)));

    textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.3, curve: Curves.easeOut)));
    Future.delayed(const Duration(milliseconds: 1000), () {
      controller.forward();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

    int _currentIndex = 0;


  final List<String> imageList = [
    'assets/images/section1.png',
    'assets/images/energy1.png',
    'assets/images/news5.png',
  ];

  // final List<Map<String, String>> carouselItems = [
  //   {
  //     'title': 'Empowering the future through Clean Energy',
  //     'subtitle':
  //         'Revolutionizing energy access by delivering innovative, sustainable, and cost-effective clean energy solutions. Join us\nin shaping a greener, more sustainable future for businesses and households across Sub-Saharan Africa.',
  //     'image': 'assets/images/section1.png',
  //   },
  //   {
  //     'title': 'Our Mission',
  //     'subtitle':
  //         'To revolutionize energy accessibility by delivering innovative, sustainable solar solutions that exceed client expectations.',
  //     'image': 'assets/images/aboutus3.png',
  //   },
  //   {
  //     'title': 'Our Vision',
  //     'subtitle':
  //         'To become the foremost partner for solar energy solutions across Sub-Saharan Africa, driven by strategic alliances with global leaders in technology, manufacturing, and finance.',
  //     'image': 'assets/images/aboutus4.png',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
            var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
          ? 
           Container(
      height: 530,
       width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/consult2.jpg',),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black54,
                      BlendMode.darken,
                    ),
                  ),
                ),
      child: Stack(
        children: [
     

           // Static Text on top
          Positioned(
            left: 50,
            top: 220,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 950),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Connecting businesses, ideas & people for greater impact',
                  speed: const Duration(milliseconds: 100),
                  textAlign: TextAlign.center,
                  cursor: '|'
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
        ),
      ),
              
                const SizedBox(height: 20),
       Center(
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000), // Constrain width for better block layout
    child: Text(
      'Solevad Consulting specializes in human-centered designs that drive sustainable in frastructural development and provide data driven solutions for enhancing business operations.',
      textAlign: TextAlign.justify, // This aligns both edges
      style: TextStyle(
        fontSize: screenSize.width * 0.028, // Adjusted for readability
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
),
              
              
              ],
            ),
          ),

          // Indicator Dots
          // Positioned(
          //   bottom: 30,
          //   left: 230,
          //   child: Row(
          //     children: List.generate(
          //       imageList.length,
          //       (index) => Container(
          //         margin: const EdgeInsets.symmetric(horizontal: 5),
          //         width: _currentIndex == index ? 11 : 7,
          //         height: _currentIndex == index ? 11 : 7,
          //         decoration: BoxDecoration(
          //           color: _currentIndex == index ? Colors.white : Colors.grey,
          //           shape: BoxShape.circle,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    )
          : Container(
             width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/consult2.jpg',),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black54,
                      BlendMode.darken,
                    ),
                  ),
                ),
      height: 700,
      child: Stack(
        children: [
         

            // Static Text on top
          Positioned(
            left: 90,
            top: 190,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
        child: Center(
          child: Container(
             padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Connecting businesses, ideas and people for greater impact',
                                    textAlign: TextAlign.center,
            
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
        ),
      ),
                const SizedBox(height: 20),
              
                   Center(
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000), // Constrain width for better block layout
    child: Text(
      'Solevad Consulting specializes in human-centered designs that drive sustainable infrastructural development and provide data driven solutions for enhancing business operations.',
      textAlign: TextAlign.justify, // This aligns both edges
      style: TextStyle(
        fontSize: screenSize.width * 0.018, // Adjusted for readability
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
),
              ],
            ),
          ),

        
        ],
      ),
    );
  }

}







class FirstPageImage extends StatefulWidget {
  const FirstPageImage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPageImage> createState() => _FirstPageImageState();
}

class _FirstPageImageState extends State<FirstPageImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 775));

    _animation = Tween<double>(begin: 920.0, end: 0.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    super.initState();
    Future.delayed(const Duration(milliseconds: 375), () {
      if (_controller.isDismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              height: 920.0,
              width: double.infinity,
              child: child,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: _animation.value,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.scaffoldColor,
                      AppColors.secondaryColor,
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
              ),
            ),
          ],
        );
      },
      child: Transform.scale(
        scale: 1,
        child: Image.asset(
          'assets/images/Frame 27.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
