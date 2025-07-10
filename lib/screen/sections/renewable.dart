import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';



class Renewable extends StatelessWidget {
  const Renewable ({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title:
                           'Renewable Energy Development',
      description:
           "We support organizations in adopting renewable energy solutions, from feasibility studies to project implementation. Our expertise includes solar, battery, and other renewable technologies, enabling a seamless transition to sustainable energy sources.",
      imagePath: 'assets/images/vector3.jpg',
      imageLeft: true,
    );
  }
}

class Renewable3 extends StatelessWidget {
  const Renewable3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Technical Asset Management',
      description:
          "We provide end-to-end technical asset management services, ensuring the optimal performance and longevity of your energy systems. Our proactive approach includes regular maintenance, performance monitoring, and troubleshooting to maximize returns on your energy investments.",
      imagePath: 'assets/images/tech.jpg',
      imageLeft: false,
    );
  }
}

class Renewable4 extends StatelessWidget {
  const Renewable4({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Energy Brokering',
      description:
          "We assist businesses in securing the most cost-effective energy rates through our energy brokering services. By leveraging our industry relationships and market insights, we negotiate contracts that align with your budget and operational needs while prioritizing sustainability.",
      imagePath: 'assets/images/broker.jpg',
      imageLeft: true,
    );
  }
}

class Renewable5 extends StatelessWidget {
  const Renewable5({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Utility Bill Monitoring',
      description:
          "Our utility bill monitoring services provide an in-depth analysis of your energy consumption trends. By identifying anomalies and usage patterns, we help you optimize costs and ensure billing accuracy, saving you money over time.",
      imagePath: 'assets/images/util.jpg',
      imageLeft: false,
    );
  }
}

class Renewable6 extends StatelessWidget {
  const Renewable6({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Measurement & Verification',
      description:
          "We specialize in providing accurate measurement and verification (M&V) services to help clients assess the effectiveness of energy-saving measures. By tracking energy performance and validating cost savings, we ensure your investments in efficiency deliver measurable results.",
      imagePath: 'assets/images/measure.jpg',
      imageLeft: true,
    );
  }
}

class Renewable7 extends StatelessWidget {
  const Renewable7({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Compliance Reporting',
      description:
          "Our team ensures your organization meets all regulatory and industry compliance requirements. We prepare detailed and accurate reports that align with local, national, and international energy standards, helping you avoid penalties and maintain operational excellence.",
      imagePath: 'assets/images/comp.jpg',
      imageLeft: false,
    );
  }
}

class Renewable8 extends StatelessWidget {
  const Renewable8({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveInfoSection(
      title: 'Energy Audits',
      description:
          "We conduct comprehensive energy audits to identify inefficiencies and uncover opportunities for energy conservation. Our detailed evaluations provide actionable recommendations to reduce operational costs while improving energy usage.",
      imagePath: 'assets/images/audit.jpg',
      imageLeft: true,
    );
  }
}



class ResponsiveInfoSection extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool imageLeft;

  const ResponsiveInfoSection({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    this.imageLeft = true,
  });

  Widget _buildTitle() => Text(
        title,
        style: const TextStyle(
          color: Color(0xff32CD32),
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
      );

  Widget _buildDescription() => Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
      );

  Widget _buildImage({required double height}) => ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          imagePath,
          height: height,
          fit: BoxFit.cover,
          width: double.infinity,
          semanticLabel: title,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    final horizontalPadding = isSmallScreen ? 24.0 : 80.0;

    if (isSmallScreen) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: _buildTitle(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: _buildDescription(),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 380),
                child: _buildImage(height: 350),
              ),
            ),
          ],
        ),
      );
    }

    final imageWidget = Expanded(
      flex: 6,
      child: _buildImage(height: 350),
    );

    final textWidget = Expanded(
      flex: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: _buildTitle(),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: _buildDescription(),
          ),
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: imageLeft
            ? [textWidget, const SizedBox(width: 70), imageWidget]
            : [imageWidget, const SizedBox(width: 70), textWidget],
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