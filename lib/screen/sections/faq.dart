import 'package:flutter/material.dart';
class FAQ {
  final String question;
  final String answer;
  FAQ({required this.question, required this.answer});
}

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  int? _expandedIndex;

  final List<FAQ> faqList = [
  FAQ(
    question: "What services does Solevad Consulting provide?",
    answer:
        "Solevad Consulting offers specialized solutions in Energy Consulting, Renewable Energy Development, Technical Asset Management, Energy Brokering, Utility Bill Monitoring, Measurement & Verification, Compliance Reporting, Energy Audits, Community Development, and Business Consulting.",
  ),
  FAQ(
    question: "How does Solevad Consulting support Renewable Energy Development?",
    answer:
        "We guide organizations through every stage of renewable energy adoption — from feasibility studies to full implementation. Our expertise spans solar, battery, and hybrid technologies, ensuring a smooth and effective transition to clean energy.",
  ),
  FAQ(
    question: "What is included in Solevad’s Energy Consulting services?",
    answer:
        "Our Energy Consulting services cover renewable energy strategy, detailed contract reviews, energy audits, and Measurement & Verification (M&V). We help optimize energy usage and ensure sustainable management practices are in place.",
  ),
  FAQ(
    question: "Can Solevad Consulting manage our energy systems over time?",
    answer:
        "Yes, through our Technical Asset Management services, we offer ongoing support including maintenance, performance tracking, and troubleshooting to ensure your energy systems perform efficiently and deliver long-term value.",
  ),
  FAQ(
    question: "What does Energy Brokering involve at Solevad Consulting?",
    answer:
        "We help businesses secure cost-effective energy contracts by leveraging our market insights and partnerships. Our brokering service ensures you get competitive energy rates that align with your sustainability goals and budget.",
  ),
  FAQ(
    question: "How does Solevad help with Utility Bill Monitoring?",
    answer:
        "Our utility bill monitoring services analyze your consumption trends to identify inefficiencies, detect billing errors, and offer recommendations to reduce costs and improve energy management.",
  ),
  FAQ(
    question: "What is Measurement & Verification (M&V), and why is it important?",
    answer:
        "Measurement & Verification (M&V) is used to assess the success of energy-saving initiatives. At Solevad, we provide precise tracking and validation to ensure your efficiency measures deliver real, measurable results.",
  ),
  FAQ(
    question: "Does Solevad provide support with energy compliance?",
    answer:
        "Absolutely. We help you stay compliant with local and global energy regulations through accurate, timely compliance reporting that mitigates risks and ensures industry standards are met.",
  ),
  FAQ(
    question: "What are Energy Audits, and how do they benefit my business?",
    answer:
        "Energy Audits help identify inefficiencies in your energy use. Our team conducts comprehensive assessments to provide actionable insights for improving performance and reducing operational costs.",
  ),
  FAQ(
    question: "How does Solevad Consulting contribute to Community Development?",
    answer:
        "We engage in educational initiatives, workforce development, and community advocacy. Our focus is on promoting equity, amplifying local voices, and supporting sustainable projects that reflect community values.",
  ),
  FAQ(
    question: "What is Equitable Workforce Development?",
    answer:
        "Solevad’s workforce development programs focus on providing inclusive training and skill-building opportunities, ensuring economic mobility and representation for all members of the community.",
  ),
  FAQ(
    question: "How does Solevad promote Community Engagement and Advocacy?",
    answer:
        "We collaborate with local stakeholders to identify community needs and advocate for inclusive development. Our efforts aim to empower underrepresented groups and ensure their voices influence meaningful change.",
  ),
  FAQ(
    question: "Does Solevad Consulting offer Business Consulting services?",
    answer:
        "Yes, we help businesses improve operations through strategic planning, process optimization, technology integration, and performance enhancement — all tailored to support sustainable growth.",
  ),
  FAQ(
    question: "What is involved in Solevad’s Strategic Planning support?",
    answer:
        "We help businesses define long-term goals and strategies through data-driven analysis, risk assessment, and actionable roadmaps that foster resilience and growth.",
  ),
];



  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
    Column(
      children: [
                  const SizedBox(height: 16),

        const Center(
          child: Text(
              "Frequently Asked Questions",
              style: TextStyle(
                              color: Color(0xff32CD32),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
        ),
          const SizedBox(height: 16),
        ListView.separated(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
            itemCount: faqList.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final faq = faqList[index];
              final isExpanded = _expandedIndex == index;
        
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _expandedIndex = isExpanded ? null : index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.05),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              faq.question,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          AnimatedRotation(
                            turns: isExpanded ? 0.5 : 0.0,
                            duration: const Duration(milliseconds: 200),
                            child: const Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                      if (isExpanded) ...[
                        const SizedBox(height: 12),
                        Text(
                          faq.answer,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                            height: 1.4,
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              );
            },
          ),
      ],
    ),
    );
  }
}