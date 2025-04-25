import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';

class EnergyManage extends StatefulWidget {
  const EnergyManage({super.key});

  @override
  State<EnergyManage> createState() => _EnergyManageState();
}

class _EnergyManageState extends State<EnergyManage> {
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
                       'Energy Management Consulting',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "At Solevad Consulting, we specialize in Energy Management Consulting, helping businesses, industries, and institutions optimize energy consumption, reduce costs, and enhance sustainability. Our expert solutions ensure efficient energy usage, regulatory compliance, and a lower carbon footprint. Our Energy Management Services includes;",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Energy Audits & Assessments\n• Energy Efficiency Optimization\n• Utility Bill Analysis & Cost Reduction\n• Measurement & Verification (M&V)",
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
                         'assets/images/vector3.jpg', // Replace with your image path
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
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                       'Energy Management Consulting',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "At Solevad Consulting, we specialize in Energy Management Consulting,\nhelping businesses, industries, and institutions optimize energy consumption,\nreduce costs, and enhance sustainability. Our expert solutions ensure efficient\nenergy usage, regulatory compliance, and a lower carbon footprint.\nOur Energy Management Services includes;",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                   "•	Energy Audits & Assessments\n• Energy Efficiency Optimization\n• Utility Bill Analysis & Cost Reduction\n• Measurement & Verification (M&V)",
                   style: TextStyle(
                     fontSize: 16,
                     height: 3,
                   ),
                 ),
               ],
             ),
         
             const SizedBox(width: 40),
         
             // Right: CEO Image and Name
             Expanded(
               flex: 2,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/vector3.jpg', // Replace with your image path
                       width: 550,
                       height: 460,
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



class EnergyManage2 extends StatefulWidget {
  const EnergyManage2({super.key});

  @override
  State<EnergyManage2> createState() => _EnergyManage2State();
}

class _EnergyManage2State extends State<EnergyManage2> {
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
                       'Our vision',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "Our vision is to be a leading force in sustainable development and innovative consulting solutions, empowering businesses and communities to achieve long-term growth, efficiency, and environmental responsibility. We strive to bridge the gap between cutting-edge technology, renewable energy, and strategic consulting to create a future where sustainability, profitability, and innovation go hand in hand.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                  
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/vish.jpg', // Replace with your image path
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
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                       'Our Vision',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "Our vision is to be a leading force in sustainable development and innovative\nconsulting solutions, empowering businesses and communities to achieve\nlong-term growth, efficiency, and environmental responsibility. We strive\nto bridge the gap between cutting-edge technology, renewable energy,\nand strategic consulting to create a future where sustainability, profitability,\nand innovation go hand in hand.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
           
               ],
             ),
         
             const SizedBox(width: 40),
         
             // Right: CEO Image and Name
             Expanded(
               flex: 2,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/vish.jpg', // Replace with your image path
                       width: 550,
                       height: 460,
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