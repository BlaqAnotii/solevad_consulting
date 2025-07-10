import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
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







class Renewable10 extends StatelessWidget {
  const Renewable10({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Market Overview',
      description:
          'At Solevad Consulting, we are dedicated to forging meaningful connections that not only drive growth but also promote sustainability across all facets of business and community life. We understand that true impact comes from collaboration and innovation, which is why we prioritize human-centered designs in our approach. By aligning our strategies with the unique needs of our clients and the communities they serve, we empower organizations to thrive while fostering a positive social and environmental footprint. Our commitment to creating these impactful connections ensures that every project contributes to a more sustainable future, benefiting both businesses and the communities they engage with.',
      imagePath: 'assets/images/abo.jpg',
      imageLeft: true,
    );
  }
}

class Renewable11 extends StatelessWidget {
  const Renewable11({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Our Mission',
      description:
          'At Solevad Consulting, our mission is to deliver human-centered, innovative solutions that empower businesses, communities, and individuals to achieve sustainable growth and transformative impact. Through our expertise in energy consulting, community development, and business optimization, we aim to connect businesses, ideas, and people to create meaningful, data-driven strategies that promote operational efficiency, environmental stewardship, and social progress..',
      imagePath: 'assets/images/mish.jpg',
      imageLeft: false, // reverse layout
    );
  }
}




class Renewable12 extends StatelessWidget {
  const Renewable12({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Our Vision',
      description:
          'Our vision is to be a global leader in sustainable consulting, recognized for creating lasting connections between businesses and communities that drive economic, social, and environmental transformation. We strive to build a future where organizations thrive by embracing renewable energy, innovative technologies, and community-focused solutions, contributing to a world that values collaboration, equity, and sustainability as the cornerstones of progress.',
      imagePath: 'assets/images/vish.jpg',
      imageLeft: true,
    );
  }
}

class ResponsiveSection extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool imageLeft;

  const ResponsiveSection({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    this.imageLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = ResponsiveWidget.isSmallScreen(context);

    if (isSmallScreen) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff32CD32),
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }

    // Large screen layout
    List<Widget> rowChildren = [
      Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            imagePath,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 50),
      Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff32CD32),
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: imageLeft ? rowChildren : rowChildren.reversed.toList(),
      ),
    );
  }
}



class SolvedaServicesApp extends StatefulWidget {
  const SolvedaServicesApp({super.key});

  @override
  State<SolvedaServicesApp> createState() => _SolvedaServicesAppState();
}

class _SolvedaServicesAppState extends State<SolvedaServicesApp> {
  @override
  Widget build(BuildContext context) {
                        var screenSize = MediaQuery.of(context).size;

    return
        Padding(
       padding: EdgeInsets.symmetric(horizontal:ResponsiveWidget.isSmallScreen(context)
          ? 50: 80, vertical: 50),
          child: Column(
            children: [
              ResponsiveWidget.isSmallScreen(context)
          ?  
           DefaultTextStyle(
            style:  TextStyle(
           color: Color(0xff32CD32),
           fontFamily: 'Mulish',
           
           fontSize: screenSize.width /25,
              fontWeight: FontWeight.w700,  ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Why Choose Us?', 
              speed: const Duration(milliseconds: 200),
                ),
              ],
              isRepeatingAnimation: true,
              // onTap: () {
              //   print("Tap Event");
              // },
            ),
          ):
              DefaultTextStyle(
            style:  TextStyle(
           color: const Color(0xff32CD32),
           fontFamily: 'Mulish',
           
           fontSize: screenSize.width /35,
              fontWeight: FontWeight.w700,  ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Why Choose Us?', 
              speed: const Duration(milliseconds: 200),
                ),
              ],
              isRepeatingAnimation: true,
              // onTap: () {
              //   print("Tap Event");
              // },
            ),
          ),
                  const SizedBox(height: 40),
          
              const ServicesGrid(),
            ],
          ),
        );
  }
}

class ServicesGrid extends StatefulWidget {
  const ServicesGrid({super.key});

  @override
  State<ServicesGrid> createState() => _ServicesGridState();
}

class _ServicesGridState extends State<ServicesGrid> {
  final List<ServiceItem> services = [
    ServiceItem(
      icon: Iconsax.arrow_circle_right_bold,
      title: 'Industry Expertise',
      bullets: ['Experienced professionals with a profound understanding of energy consulting and business strategy, ensuring you receive top-tier insights and solutions.', ],
    ),
    ServiceItem(
      icon: Iconsax.arrow_circle_right_bold,
      title: 'Tailored Solutions',
      bullets: ['We recognize that every client is unique. Our services are meticulously customized to align with your specific challenges and goals, delivering impactful results.'],
    ),
    ServiceItem(
      icon: Iconsax.arrow_circle_right_bold,
      title: 'Commitment to Sustainability',
      bullets: ['We actively promote eco-friendly practices by prioritizing energy-efficient solutions that not only enhance your operations but also contribute to a healthier planet.'],
    ),
    ServiceItem(
      icon: Iconsax.arrow_circle_right_bold,
      title: 'Comprehensive Support',
      bullets: ['We foster enduring partnerships with our clients by providing reliable ongoing support, ensuring you have the resources and assistance needed for sustained success.'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
                            var screenSize = MediaQuery.of(context).size;

    return  ResponsiveWidget.isSmallScreen(context)
          ? Center(
            child: ListView(
            shrinkWrap: true,
            
                  children: services.map((item) => Center(child: ServiceBox(item: item))).toList(),  
                  ),
          )
    :
    GridView.count(
      crossAxisCount: 2,
         childAspectRatio: screenSize.width *0.0023, // Adjust this to control the height vs width
mainAxisSpacing: 20,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      children: services.map((item) => ServiceBox(item: item)).toList(),
    );
  }
}

class ServiceItem {
  final IconData icon;
  final String title;
  final List<String> bullets;

  ServiceItem({required this.icon, required this.title, required this.bullets});
}

class ServiceBox extends StatelessWidget {
  final ServiceItem item;

  const ServiceBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(item.icon, size: 30, color: const Color(0xff8B4513)),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
                   constraints: const BoxConstraints(maxWidth: 600),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                     color: Color(0xff32CD32),
                  ),
                ),
              ),
              ...item.bullets.map(
                (b) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                   constraints: const BoxConstraints(maxWidth: 600),
                   margin: EdgeInsets.only(bottom: 20),
                  child: Text(b, 
                textAlign: TextAlign.justify, // This aligns both edges
                  style: const TextStyle(
                    fontSize: 16,
                     height: 1.5,
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}




