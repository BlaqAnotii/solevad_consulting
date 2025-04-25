import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';

class RealEstate extends StatefulWidget {
  const RealEstate({super.key});

  @override
  State<RealEstate> createState() => _RealEstateState();
}

class _RealEstateState extends State<RealEstate> {
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
                       'Real Estate Consulting Services',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "At Solevad Consulting, we provide expert Real Estate Consulting services to help individuals, investors, and businesses make informed property decisions. Whether you are buying, selling, developing, or investing in real estate, our team offers tailored solutions to maximize value and minimize risks.  Our Real Estate Consulting Services;",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Property Investment Advisory\n• Real Estate Development Consulting\n• Property Valuation & Market Analysis\n• Real Estate Transactions & Negotiation\n• Facility & Property Management Consulting",
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
                         'assets/images/vector5.jpg', // Replace with your image path
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
                       'Real Estate Consulting Services',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "At Solevad Consulting, we provide expert Real Estate Consulting services\nto help individuals, investors, and businesses make informed propert\n decisions. Whether you are buying, selling, developing, or investing in real estate,\nour team offers tailored solutions to maximize value and minimize risks.\nOur Real Estate Consulting Services;",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                  "• Property Investment Advisory\n• Real Estate Development Consulting\n• Property Valuation & Market Analysis\n• Real Estate Transactions & Negotiation\n• Facility & Property Management Consulting",
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
                         'assets/images/vector5.jpg', // Replace with your image path
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