
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:solevad/screen/sections/booking.dart';

import 'package:solevad/screen/sections/bottom_bar.dart';
import 'package:solevad/screen/sections/eighth_section.dart';
import 'package:solevad/screen/sections/faq.dart';
import 'package:solevad/screen/sections/fifth_section.dart';
import 'package:solevad/screen/sections/forth_section.dart';
import 'package:solevad/screen/sections/market.dart';
import 'package:solevad/screen/sections/ninth_section.dart';
import 'package:solevad/screen/sections/seventh_section.dart';
import 'package:solevad/screen/sections/team_section.dart';
import 'package:solevad/screen/sections/third_section.dart';
import 'package:solevad/screen/widget/responsive.dart';

import '../bloc/screen_offset.dart';
import 'sections/first_sections.dart';
import 'sections/sixth_section.dart';

class WholeScreen extends StatefulWidget {
  const WholeScreen({super.key});

  @override
  State<WholeScreen> createState() => _WholeScreenState();
}

class _WholeScreenState extends State<WholeScreen> {
  late ScrollController controller;
  @override
  void initState() { 
    controller = ScrollController();

    controller.addListener(() {
      context.read<DisplayOffset>().changeDisplayOffset(
          (MediaQuery.of(context).size.height + controller.position.pixels)
              .toInt());
    });
    super.initState();
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

  @override
  Widget build(BuildContext context) {
            var screenSize = MediaQuery.of(context).size;

    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 90,
        pinned: false,
        floating: false,
        snap: false,
        expandedHeight: 500,
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
                            SizedBox(width: screenSize.width / 20),InkWell(
                              onHover: (value) {
                                setState(() {
                                  value
                                      ? _isHovering[1] = true
                                      : _isHovering[1] = false;
                                });
                              },
                              onTap: () {
                                context.go('/home');
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
                                context.go('/home');
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
                          context.go('/contact_us');
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
        flexibleSpace: const FlexibleSpaceBar(
          background: Stack(
            fit: StackFit.expand,
            children: [
             FirstSection()
            ],
          ),
        ),
      ),

       // Sliver content section
      const SliverToBoxAdapter(
        child: Column(
          children: [
           //ThirdSection(),

        //SeventhSection(),
        NinthSection(),
                Market(),
                EighthSection(),

       
       FifthSection(),
       TeamSection(),
       Booking(),
 SizedBox(
          height: 50.0,
        ),
        FAQPage(),
        SizedBox(
          height: 50.0,
        ),
        BottomBar(),
          ]
        ),
      )
             
      ],
    );
  }
}
