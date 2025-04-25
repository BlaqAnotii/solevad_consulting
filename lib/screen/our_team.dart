import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:solevad/bloc/screen_offset.dart';
import 'package:solevad/screen/sections/bottom_bar.dart';
import 'package:solevad/screen/sections/energy_manage.dart';
import 'package:solevad/screen/sections/energy_procure.dart';
import 'package:solevad/screen/sections/real_estate.dart';
import 'package:solevad/screen/sections/renewable.dart';
import 'package:solevad/screen/sections/sustain.dart';
import 'package:solevad/screen/widget/responsive.dart';
import 'package:solevad/screen/widget/text_reveal.dart';
import 'package:solevad/screen/widget/text_transform.dart';

class OurTeamScreen extends StatefulWidget {
  const OurTeamScreen({super.key});

  @override
  State<OurTeamScreen> createState() => _OurTeamScreenState();
}

class _OurTeamScreenState extends State<OurTeamScreen> with SingleTickerProviderStateMixin {
 

  late AnimationController controller;
  late Animation<double> textRevealAnimation;
  late Animation<double> textOpacityAnimation;
  late Animation<double> descriptionAnimation;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  late ScrollController controllers;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition =
          controllers.position.pixels;
    });
  }

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

    textRevealAnimation =
        Tween<double>(begin: 60.0, end: 0.0)
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.0, 0.2,
                    curve: Curves.easeOut)));

    textOpacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0)
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.0, 0.3,
                    curve: Curves.easeOut)));
    Future.delayed(
        const Duration(milliseconds: 1000), () {
      controller.forward();
    });

    controllers = ScrollController();
    controllers.addListener(_scrollListener);

    controllers.addListener(() {
      context
          .read<DisplayOffset>()
          .changeDisplayOffset(
              (MediaQuery.of(context)
                          .size
                          .height +
                      controllers.position.pixels)
                  .toInt());
    });
    super.initState();
  }

  // @override
  // void initState() {
  //   controller = ScrollController();
  //   controller.addListener(_scrollListener);

  //   controller.addListener(() {
  //     context.read<DisplayOffset>().changeDisplayOffset(
  //         (MediaQuery.of(context).size.height + controller.position.pixels)
  //             .toInt());
  //   });
  //   super.initState();
  // }

  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   var screenSize = MediaQuery.of(context).size;
    _opacity =
        _scrollPosition < screenSize.height * 0.40
            ? _scrollPosition /
                (screenSize.height * 0.40)
            : 1;
    return   Scaffold(
       drawer: ResponsiveWidget.isSmallScreen(context)
         ? 
      
      Drawer(
        child: Container(
          color: const Color(0xfffffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  'assets/images/solevadlogo.png',
                  scale: 6,
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                color: Colors.blueGrey[400],
                thickness: 0.5,
              ),
              const SizedBox(height: 30),
               ListTile(
                onTap: () {
               context.go('/home');

                },
                leading: const Icon(
                  Iconsax.home_1_bold,
                  size: 22,
                  color: Color(0xff4779A3),
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
               ListTile(
                onTap: () {
                                                  context.go('/about-us');

                },
                leading: const Icon(
                  Iconsax.profile_2user_bold,
                  size: 22,
                  color: Color(0xff4779A3),
                ),
                title: const Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
               
              ),
              ListTile(
                onTap: () {
                                                  context.go('/services');

                },
                leading: const Icon(
                  Iconsax.bag_2_bold,
                  size: 22,
                  color: Color(0xff4779A3),
                ),
                title: const Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                
              ),
             
               ListTile(
                onTap: () {
               context.go('/contact_us');

                },
                leading: const Icon(
                  Iconsax.call_add_bold,
                  size: 22,
                  color: Color(0xff4779A3),
                ),
                title: const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
               ListTile(
                onTap: () {
               context.go('/blog');

                },
                leading: const Icon(
                  Iconsax.blogger_bold,
                  size: 22,
                  color: Color(0xff4779A3),
                ),
                title: const Text(
                  'Blog',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2024 | Solevad Energy',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ) : null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 90,
          pinned: false,
          floating: false,
          snap: false,
          expandedHeight: 450,
          backgroundColor: Colors.transparent,
            automaticallyImplyLeading: ResponsiveWidget.isSmallScreen(context)
             ?true : false, // 👈 This hides the back button
          leading: 
          ResponsiveWidget.isSmallScreen(context)
             ?
          Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Iconsax.menu_1_outline, color:  Color(0xffffffff)),
                    onPressed: () {
                      Scaffold.of(context)
                          .openDrawer(); // Opens the drawer using correct context
                    },
                  ),
                ): null,
          elevation: 0,
          centerTitle: true,
      title: ResponsiveWidget.isSmallScreen(context)
             ?  InkWell(
                          onTap: () {
                                   context.go('/home');
      
                          },
                          child: Image.asset(
                            'assets/images/solevadlogo.png',
                            scale: 5,
                          ),
                        ) :
              Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: screenSize.width / 70),
                        InkWell(
                          onTap: () {
                                   context.go('/home');
      
                          },
                          child: Image.asset(
                            'assets/images/solevadlogo.png',
                            scale: 5,
                          ),
                        ),
      
                        // const Text(
                        //   'Solevad Energy',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.w500,
                        //     letterSpacing: 3,
                        //   ),
                        // ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: screenSize.width / 12),
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[0] = true
                                        : _isHovering[0] = false;
                                  });
                                },
                                onTap: () {
                                   context.go('/home');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Home',
                                      style: TextStyle(
                                        color: _isHovering[0]
                                            ? Colors.blue[200]
                                            : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[0],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: screenSize.width / 20),
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[1] = true
                                        : _isHovering[1] = false;
                                  });
                                },
                                onTap: () {
                                  context.go('/about-us');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'About',
                                      style: TextStyle(
                                        color: _isHovering[1]
                                            ? Colors.blue[200]
                                            : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[1],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: screenSize.width / 20),
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[2] = true
                                        : _isHovering[2] = false;
                                  });
                                },
                                onTap: () {
                                  context.go('/services');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Services',
                                      style: TextStyle(
                                        color: _isHovering[2]
                                            ? Colors.blue[200]
                                            : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[2],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: screenSize.width / 20),
      
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[3] = true
                                        : _isHovering[3] = false;
                                  });
                                },
                                onTap: () {
                                  context.go('/contact_us');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Contact Us',
                                      style: TextStyle(
                                        color: _isHovering[3]
                                            ? Colors.blue[200]
                                            : Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
      
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[3],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: screenSize.width / 20),
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    value
                                        ? _isHovering[4] = true
                                        : _isHovering[4] = false;
                                  });
                                },
                                onTap: () {
                                  context.go('/blog');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Blog',
                                      style: TextStyle(
                                        color: _isHovering[4]
                                            ? Colors.blue[200]
                                            : Colors.white,
                                            fontWeight: FontWeight.bold,
                                             fontSize: 16,
      
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[4],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // IconButton(
                        //   icon: const Icon(Icons.brightness_6),
                        //   splashColor: Colors.transparent,
                        //   highlightColor: Colors.transparent,
                        //   color: Colors.white,
                        //   onPressed: () {
                        //     EasyDynamicTheme.of(context).changeTheme();
                        //   },
                        // ),
                        SizedBox(width: screenSize.width / 20),
                        ElevatedButton(
                          onPressed: () {
                            //context.go('/Our_Services');
                          context.go('/book-consultation');
                          },
                          style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                            fixedSize: const Size(170, 45),
                            backgroundColor: const Color(0xff4779A3),
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width / 20,
                        ),
                      ],
                    ),
                  ),
          flexibleSpace:  FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                  ResponsiveWidget.isSmallScreen(
                      context)
                  ? Container(
                      height: 300,
                      decoration:
                          const BoxDecoration(
                              image:
                                  DecorationImage(
                                      fit: BoxFit
                                          .cover,
                                      colorFilter:
                                          ColorFilter
                                              .mode(
                                        Colors
                                            .black54,
                                        BlendMode
                                            .darken,
                                      ),
                                      image: AssetImage(
                                          'assets/images/group.jpg'))),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets
                                      .only(
                                      left: 30,
                                      top: 110),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
                                children: [
                                DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'About Us',
                speed: const Duration(milliseconds: 100),
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
      const SizedBox(height: 20),

               
                const Center(
                  child: Text(
                    'Innovative Solutions | Expert Guidance | Sustainable Growth',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                 const SizedBox(height: 20),

               
                const Center(
                  child: Text(
                    'Each solution is tailored to the specific need of the entity or community to maximize operational efficiency. Solevad Consulting is a leading consultancy firm specializing in energy solutions, business strategy, and operational excellence. With years of industry experience, we help businesses and organizations optimize their energy consumption, improve efficiency, and achieve sustainable growth. Our team of experts provides tailored solutions that align with your unique business goals.',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                                 
                                ],
                              ),
                            ),
                          ),
                          //const Expanded(flex: 9, child: FirstPageImage())
                        ],
                      ),
                    )
                  : Container(
                      height: 400,
                      decoration:
                          const BoxDecoration(
                              image:
                                  DecorationImage(
                                      fit: BoxFit
                                          .cover,
                                      colorFilter:
                                          ColorFilter
                                              .mode(
                                        Colors
                                            .black54,
                                        BlendMode
                                            .darken,
                                      ),
                                      image: AssetImage(
                                          'assets/images/group.jpg'))),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets
                                      .only(
                                      left: 90,
                                      top: 130),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .start,
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
              'About Us',
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
      const SizedBox(height: 20),
                const Text(
                  'Innovative Solutions | Expert Guidance | Sustainable Growth',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(height: 20),
                const Text(
                  'Each solution is tailored to the specific need of the entity or community to maximize\noperational efficiency. Solevad Consulting is a leading consultancy firm specializing\nin energy solutions, business strategy, and operational excellence. With years of\nindustry experience, we help businesses and organizations optimize their energy\nconsumption, improve efficiency, and achieve sustainable growth. Our team of experts\nprovides tailored solutions that align with your unique business goals.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                  
                                ],
                              ),
                            ),
                          ),
                          //const Expanded(flex: 9, child: FirstPageImage())
                        ],
                      ),
                    ),
              ],
            ),
          ),
        ),
      
         // Sliver content section
        const SliverToBoxAdapter(
          child: Column(
            children: [
                            Sustain2(),
      Renewable2(),
      EnergyManage2(),
      // EnergyProcure(),
      // RealEstate(),
          BottomBar(),
            ]
          ),
        )
               
        ],
      ),
    );
  }

  bool termsAccepted = false;
}