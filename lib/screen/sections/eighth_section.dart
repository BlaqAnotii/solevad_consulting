
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:solevad/bloc/screen_offset.dart';
import 'package:solevad/screen/widget/responsive.dart';
import 'package:solevad/screen/widget/text_reveal.dart';

class EighthSection extends StatefulWidget {
  const EighthSection({super.key});

  @override
  State<EighthSection> createState() => _EighthSectionState();
}

class _EighthSectionState extends State<EighthSection>
     {
  // late AnimationController controller;
  // late Animation<double> imageRevealAnimation;
  // late Animation<double> textRevealAnimation;
  // late Animation<double> textRevealEndAnimation;
  // late Animation<double> subTextOpacityAnimation;
  // late Animation<double> subImageRevealAnimation;
  // late Animation<Offset> offsetImage;
  // late Animation<Offset> transform;

  // @override
  // void initState() {
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(
  //       milliseconds: 1700,
  //     ),
  //     reverseDuration: const Duration(
  //       milliseconds: 375,
  //     ),
  //   );

  //   imageRevealAnimation = Tween<double>(begin: 500.0, end: 1.0).animate(
  //       CurvedAnimation(
  //           parent: controller,
  //           curve: const Interval(0.30, 0.40, curve: Curves.easeOut)));

  //   textRevealAnimation = Tween<double>(begin: 70.0, end: 1.0).animate(
  //       CurvedAnimation(
  //           parent: controller,
  //           curve: const Interval(0.30, 0.60, curve: Curves.easeOut)));

  //   textRevealEndAnimation = Tween<double>(begin: 1.0, end: 100.0).animate(
  //       CurvedAnimation(
  //           parent: controller,
  //           curve: const Interval(0.30, 0.60, curve: Curves.easeOut)));
  //   subTextOpacityAnimation = Tween<double>(begin: 1.0, end: 1.0).animate(
  //       CurvedAnimation(
  //           parent: controller,
  //           curve: const Interval(0.50, 0.80, curve: Curves.easeOut)));
  //   offsetImage =
  //       Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
  //           .animate(CurvedAnimation(parent: controller, curve: Curves.ease));
  //   transform =
  //       Tween<Offset>(begin: const Offset(10, 0), end: const Offset(0, 0))
  //           .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

  //   subImageRevealAnimation = Tween<double>(begin: 0.0, end: 90.0).animate(
  //       CurvedAnimation(
  //           parent: controller,
  //           curve: const Interval(0.70, 1.0, curve: Curves.easeOut)));

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return  ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Center(
                     child: Text(
                       'Industries We Serve',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Energy & Renewable Solutions\n• Manufacturing & Industrial Sectors\n• Real Estate & Property Management\n• Government & Public Institutions\n• Commercial & Retail Businesses",
                       style: TextStyle(
                         fontSize: 16,
                         height: 2.4,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/corporate.jpg', // Replace with your image path
                         width: 350,
                         height: 350,
                         fit: BoxFit.cover,
                       ),
                     ),
 ),
                  
                 ],
               ),
             )
             :
       Padding(
       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             // Left: Text Content
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Industries We Serve',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                 Text(
                   "•	Energy & Renewable Solutions   • Manufacturing & Industrial Sectors\n• Real Estate & Property Management   • Government & Public Institutions\n• Commercial & Retail Businesses",
                   style: TextStyle(
                     fontSize: 16,
                     height: 3,
                   ),
                 ),
               ],
             ),
         
             const SizedBox(width: 30),
         
             // Right: CEO Image and Name
             Expanded(
               flex: 2,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/corporate.jpg', // Replace with your image path
                       width: 550,
                       height: 350,
                       fit: BoxFit.cover,
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
