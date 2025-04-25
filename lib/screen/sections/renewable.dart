import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';

class Renewable extends StatefulWidget {
  const Renewable({super.key});

  @override
  State<Renewable> createState() => _RenewableState();
}

class _RenewableState extends State<Renewable> {
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
                       'Renewable Energy Services',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "At Solevad Consulting, we are committed to providing innovative, sustainable, and cost-effective renewable energy solutions to power homes, businesses, and communities. Our expertise in clean energy ensures efficiency, reliability, and long-term savings while reducing environmental impact. Join our renewable energy program and increase renewable energy usage while cutting greenhouse gas emissions attributed to fossil fuels. Our Renewable Energy Services.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Site Assessment and Design, Equipment Selection\n• Renewable Energy Credit Reporting (REC)\n• Power Purchase Agreements (PPA)\n• Micro-grid solutions\n• Remote monitoring, implementation, operations and maintenance",
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
                         'assets/images/vector2.jpg', // Replace with your image path
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
                         'assets/images/vector2.jpg', // Replace with your image path
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
                       'Renewable Energy Services',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "At Solevad Consulting, we are committed to providing innovative, sustainable,\nand cost-effective renewable energy solutions to power homes, businesses,\nand communities. Our expertise in clean energy ensures efficiency, reliability,\nand long-term savings while reducing environmental impact. Join our renewable\nenergy program and increase renewable energy usage while cutting greenhouse\ngas emissions attributed to fossil fuels. Our Renewable Energy Services.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                   "•	Site Assessment and Design, Equipment Selection\n• Renewable Energy Credit Reporting (REC)\n• Power Purchase Agreements (PPA)\n• Micro-grid solutions\n• Remote monitoring, implementation, operations and maintenance",
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


class Renewable2 extends StatefulWidget {
  const Renewable2({super.key});

  @override
  State<Renewable2> createState() => _Renewable2State();
}

class _Renewable2State extends State<Renewable2> {
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
                       'Our Mission',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "Our mission is to provide innovative, sustainable, and client-focused solutions in renewable energy, infrastructure development, real estate, and energy management consulting We are committed to:",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                      "•	Delivering high-quality, cost-effective solutions that enhance efficiency and sustainability.\n•	Empowering businesses and communities with expert consulting in energy procurement, infrastructure, and real estate.\n•	Driving the transition to renewable energy by offering cutting-edge, environmentally friendly solutions.\n•	Ensuring long-term value through strategic planning, innovation, and excellence in execution.",
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
                         'assets/images/mish.jpg', // Replace with your image path
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
                         'assets/images/mish.jpg', // Replace with your image path
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
                       'Our Mission',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "Our mission is to provide innovative, sustainable, and client-focused\nsolutions in renewable energy, infrastructure development,\nreal estate, and energy management consulting\nWe are committed to:",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                   "•	Delivering high-quality, cost-effective solutions that\nenhance efficiency and sustainability.\n•	Empowering businesses and communities with expert\nconsulting in energy procurement, infrastructure, and real estate.\n•	Driving the transition to renewable energy by offering\ncutting-edge, environmentally friendly solutions.\n•	Ensuring long-term value through strategic\nplanning, innovation, and excellence in execution.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 2.3,
                   ),
                 ),
               ],
             ),
           ],
         ),
       );
  }
}