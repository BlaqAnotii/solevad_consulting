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
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Renewable Energy Development',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "We support organizations in adopting renewable energy solutions, from feasibility studies to project implementation. Our expertise includes solar, battery, and other renewable technologies, enabling a seamless transition to sustainable energy sources.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
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

               Expanded(
               flex: 6,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/vector3.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
           
         
             const SizedBox(width: 70),
         
             // Right: CEO Image and Name
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Renewable Energy Development',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "We support organizations in adopting renewable energy solutions, from feasibility studies to project implementation. Our expertise includes solar, battery, and other renewable technologies, enabling a seamless transition to sustainable energy sources.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
           ],
         ),
       );
  }
}



class Renewable3 extends StatefulWidget {
  const Renewable3({super.key});

  @override
  State<Renewable3> createState() => _Renewable3State();
}

class _Renewable3State extends State<Renewable3> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Technical Asset Management',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "We provide end-to-end technical asset management services, ensuring the optimal performance and longevity of your energy systems. Our proactive approach includes regular maintenance, performance monitoring, and troubleshooting to maximize returns on your energy investments.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/tech.jpg', // Replace with your image path
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

           Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Technical Asset Management',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "We provide end-to-end technical asset management services, ensuring the optimal performance and longevity of your energy systems. Our proactive approach includes regular maintenance, performance monitoring, and troubleshooting to maximize returns on your energy investments.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
         
             const SizedBox(width: 70),
           Expanded(
               flex: 6,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/tech.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
             // Right: CEO Image and Name
             
           ],
         ),
       );
  }
}



class Renewable4 extends StatefulWidget {
  const Renewable4({super.key});

  @override
  State<Renewable4> createState() => _Renewable4State();
}

class _Renewable4State extends State<Renewable4> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Energy Brokering',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "We assist businesses in securing the most cost-effective energy rates through our energy brokering services. By leveraging our industry relationships and market insights, we negotiate contracts that align with your budget and operational needs while prioritizing sustainability.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/broker.jpg', // Replace with your image path
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
                         'assets/images/broker.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
           
         
             const SizedBox(width: 70),
         
             // Right: CEO Image and Name
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Energy Brokering',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "We assist businesses in securing the most cost-effective energy rates through our energy brokering services. By leveraging our industry relationships and market insights, we negotiate contracts that align with your budget and operational needs while prioritizing sustainability.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
           ],
         ),
       );
  }
}





class Renewable5 extends StatefulWidget {
  const Renewable5({super.key});

  @override
  State<Renewable5> createState() => _Renewable5State();
}

class _Renewable5State extends State<Renewable5> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Utility Bill Monitoring',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "Our utility bill monitoring services provide an in-depth analysis of your energy consumption trends. By identifying anomalies and usage patterns, we help you optimize costs and ensure billing accuracy, saving you money over time.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/util.jpg', // Replace with your image path
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

           Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Utility Bill Monitoring',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "Our utility bill monitoring services provide an in-depth analysis of your energy consumption trends. By identifying anomalies and usage patterns, we help you optimize costs and ensure billing accuracy, saving you money over time.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
         
             const SizedBox(width: 70),
           Expanded(
               flex: 6,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/util.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
             // Right: CEO Image and Name
             
           ],
         ),
       );
  }
}



class Renewable6 extends StatefulWidget {
  const Renewable6({super.key});

  @override
  State<Renewable6> createState() => _Renewable6State();
}

class _Renewable6State extends State<Renewable6> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Measurement & Verification',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "We specialize in providing accurate measurement and verification (M&V) services to help clients assess the effectiveness of energy-saving measures. By tracking energy performance and validating cost savings, we ensure your investments in efficiency deliver measurable results.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/measure.jpg', // Replace with your image path
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
                         'assets/images/measure.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
           
         
             const SizedBox(width: 70),
         
             // Right: CEO Image and Name
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Measurement & Verification',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "We specialize in providing accurate measurement and verification (M&V) services to help clients assess the effectiveness of energy-saving measures. By tracking energy performance and validating cost savings, we ensure your investments in efficiency deliver measurable results.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
           ],
         ),
       );
  }
}







class Renewable7 extends StatefulWidget {
  const Renewable7({super.key});

  @override
  State<Renewable7> createState() => _Renewable7State();
}

class _Renewable7State extends State<Renewable7> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Compliance Reporting',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "Our team ensures your organization meets all regulatory and industry compliance requirements. We prepare detailed and accurate reports that align with local, national, and international energy standards, helping you avoid penalties and maintain operational excellence.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/comp.jpg', // Replace with your image path
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

           Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Compliance Reporting',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "Our team ensures your organization meets all regulatory and industry compliance requirements. We prepare detailed and accurate reports that align with local, national, and international energy standards, helping you avoid penalties and maintain operational excellence.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
                    ),
                  ),
                              
               ],
             ),
         
             const SizedBox(width: 70),
           Expanded(
               flex: 6,
               child: Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(5),
                     child: Image.asset(
                         'assets/images/comp.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
             // Right: CEO Image and Name
             
           ],
         ),
       );
  }
}



class Renewable8 extends StatefulWidget {
  const Renewable8({super.key});

  @override
  State<Renewable8> createState() => _Renewable8State();
}

class _Renewable8State extends State<Renewable8> {
  @override
  Widget build(BuildContext context) {
     return   ResponsiveWidget.isSmallScreen(context)
          ? 
              Padding(
       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                       child: const Text(
                         'Energy Audits',
                         style: TextStyle(
                           color: Color(0xff32CD32),
                       
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   Center(
                     child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 900),
                       child: const Text(
                       "We conduct comprehensive energy audits to identify inefficiencies and uncover opportunities for energy conservation. Our detailed evaluations provide actionable recommendations to reduce operational costs while improving energy usage.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                        ),
                     ),
                   ),
                 
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/audit.jpg', // Replace with your image path
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
                         'assets/images/audit.jpg', // Replace with your image path
                       width: 620,
                       height: 350,
                       fit: BoxFit.cover,
                     ),
                   ),
                   
                 ],
               ),
             ),
           
         
             const SizedBox(width: 70),
         
             // Right: CEO Image and Name
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Center(
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 1000),
                     child: const Text(
                           'Energy Audits',
                       style: TextStyle(
                         color: Color(0xff32CD32),
                     
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 20),
                  Center(
                    child: Container(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
    constraints: const BoxConstraints(maxWidth: 600),
                      child: const Text(
                       "We conduct comprehensive energy audits to identify inefficiencies and uncover opportunities for energy conservation. Our detailed evaluations provide actionable recommendations to reduce operational costs while improving energy usage.",
                             textAlign: TextAlign.justify, // This aligns both edges

                       style: TextStyle(
                         fontSize: 16,
                         height: 1.5,
                       ),
                                       ),
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