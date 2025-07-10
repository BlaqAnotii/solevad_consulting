import 'package:flutter/material.dart';
import 'package:solevad/screen/widget/responsive.dart';

class Sustain extends StatefulWidget {
  const Sustain({super.key});

  @override
  State<Sustain> createState() => _SustainState();
}

class _SustainState extends State<Sustain> {
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
                       'Sustainable Infrastructure Development',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "At Solevad Consulting, we specialize in Sustainable Infrastructure Development, ensuring that projects are designed, built, and operated in a way that minimizes environmental impact while maximizing efficiency and long-term resilience. Our unique services on sustainable infrastructure have aided in human capital formation, promoting social inclusion and equity. Our green infrastructure has contributed immensely to the global decarbonization process, safeguarding local environments from pollutants.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                   const SizedBox(height: 20),
                   const Center(
                     child: Text(
                       "•	Green Building Solutions & Eco-Friendly Construction\n• Smart Energy Integration for Buildings & Facilities\n• Sustainable Water & Waste Management Solutions\n• Climate Resilient Urban Planning & Design\n• Infrastructure Development for Smart Cities",
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
                         'assets/images/vector.jpg', // Replace with your image path
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
                       'Sustainable Infrastructure Development',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "At Solevad Consulting, we specialize in Sustainable Infrastructure Development,\nensuring that projects are designed, built, and operated in a way that minimizes\nenvironmental impact while maximizing efficiency and long-term resilience. Our\nunique services on sustainable infrastructure have aided in human capital\nformation, promoting social inclusion and equity. Our green infrastructure has\ncontributed immensely to the global decarbonization process, safeguarding\nlocal environments from pollutants.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 1.5,
                   ),
                 ),
                                  SizedBox(height: 20),

                 Text(
                   "•	Green Building Solutions & Eco-Friendly Construction\n• Smart Energy Integration for Buildings & Facilities\n• Sustainable Water & Waste Management Solutions\n• Climate Resilient Urban Planning & Design\n• Infrastructure Development for Smart Cities",
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
                         'assets/images/vector.jpg', // Replace with your image path
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



class Sustain2 extends StatefulWidget {
  const Sustain2({super.key});

  @override
  State<Sustain2> createState() => _Sustain2State();
}

class _Sustain2State extends State<Sustain2> {
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
                       'Why Choose Us?',
                       style: TextStyle(
                         color: Color(0xff32CD32),

                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ),
                                      const SizedBox(height: 20),

                   const Text(
                   "✅ Expertise & Experience: Our team comprises industry professionals with deep knowledge of energy and business strategy.\n✅ Customized Solutions: We tailor our services to meet the unique needs of each client.\n✅ Sustainability Focus: We prioritize energy-efficient and eco-friendly solutions.\n✅ Reliable Support: We provide continuous after-sales and maintenance support.",
                   style: TextStyle(
                     fontSize: 16,
                     height: 3,
                   ),
                 ),
                  
                                      const SizedBox(height: 30),
 Center(
   child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         'assets/images/why.jpg', // Replace with your image path
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
                       'Why Choose Us?',
                   style: TextStyle(
                     color: Color(0xff32CD32),

                     fontSize: 26,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 SizedBox(height: 20),
                  Text(
                   "✅ Expertise & Experience: Our team comprises industry professionals\nwith deep knowledge of energy and business strategy.\n✅ Customized Solutions: We tailor our services to meet the unique\nneeds of each client.\n✅ Sustainability Focus: We prioritize energy-efficient and eco-friendly\nsolutions.\n✅ Reliable Support: We provide continuous after-sales and maintenance\nsupport.",
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
                         'assets/images/why.jpg', // Replace with your image path
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



class Renewables extends StatelessWidget {
  const Renewables({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Equitable Workforce Development',
      description:
          'We focus on creating inclusive opportunities that empower community members through skill-building and training programs. By prioritizing equity in workforce development, we aim to enhance economic mobility and ensure that all voices are represented in the local job market.',
      imagePath: 'assets/images/equity.jpg',
      imageLeft: true,
    );
  }
}

class Renewables3 extends StatelessWidget {
  const Renewables3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Community Engagement & Advocacy',
      description:
          'Our approach emphasizes active collaboration with community stakeholders to identify and address local needs. Through advocacy efforts, we work to amplify underrepresented voices and foster a sense of ownership among community members in the development process, ensuring equitable access to resources and opportunities.',
      imagePath: 'assets/images/equity2.jpg',
      imageLeft: false,
    );
  }
}

class Renewables4 extends StatelessWidget {
  const Renewables4({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Holistic Educational Initiatives',
      description:
          'We support educational programs that provide access to quality learning experiences for all community members. By fostering partnerships with local schools and organizations, we aim to create a more equitable educational landscape that prepares individuals for future success.',
      imagePath: 'assets/images/equity3.jpg',
      imageLeft: true,
    );
  }
}

class Renewables5 extends StatelessWidget {
  const Renewables5({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Sustainable Community Projects',
      description:
          'We design and implement community projects that are environmentally sustainable and socially responsible. By aligning these initiatives with local needs and values, we help build resilient communities that thrive while promoting equitable development for all.',
      imagePath: 'assets/images/equity4.jpg',
      imageLeft: false,
    );
  }
}

class Renewables6 extends StatelessWidget {
  const Renewables6({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSection(
      title: 'Energy Policy Advocacy',
      description:
          'We actively engage in energy policy advocacy to promote equitable access to sustainable energy resources. By collaborating with policymakers and community leaders, we work to influence legislation that supports renewable energy initiatives and addresses energy equity, ensuring that all communities benefit from clean energy solutions.',
      imagePath: 'assets/images/equity5.jpg',
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