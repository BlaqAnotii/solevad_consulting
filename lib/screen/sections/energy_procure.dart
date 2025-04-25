import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';

class EnergyProcure extends StatefulWidget {
  const EnergyProcure({super.key});

  @override
  State<EnergyProcure> createState() => _EnergyProcureState();
}

class _EnergyProcureState extends State<EnergyProcure> {
  @override
  Widget build(BuildContext context) {
    return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Center(
                     child: Text(
                       'Energy Procurement',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "At Solevad Consulting, we provide Energy Procurement Consulting services to help businesses, industries, and organizations secure cost-effective and sustainable energy solutions. Our expert guidance ensures you get the best energy contracts, minimize costs, and achieve long-term energy security.Our Energy Procurement Services.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Energy Sourcing & Procurement Strategy\n• Energy Cost Optimization\n• Renewable Energy Procurement\n• Risk Management & Regulatory Compliance",
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
                         'assets/images/vector4.jpg', // Replace with your image path
                         width: 380,
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

               Expanded(
               flex: 6,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/vector4.jpg', // Replace with your image path
                       width: 590,
                       height: 460,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
           
         
             const SizedBox(width: 70),
         
             // Right: CEO Image and Name
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                       'Energy Procurement',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                    "At Solevad Consulting, we provide Energy Procurement Consulting services\nto help businesses, industries, and organizations secure cost-effective and\nsustainable energy solutions. Our expert guidance ensures you get the\nbest energy contracts, minimize costs, and achieve long-term energy security.\nOur Energy Procurement Services.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                    "• Energy Sourcing & Procurement Strategy\n• Energy Cost Optimization\n• Renewable Energy Procurement\n• Risk Management & Regulatory Compliance",
                   style: TextStyle(
                     fontSize: 16,
                     height: 3,
                   ),
                 ),
               ],
             ),
           ],
         ),
       );
  }
}