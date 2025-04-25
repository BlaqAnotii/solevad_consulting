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
    question: "What does Solevad Consulting specialize in?",
    answer:
        "Solevad Consulting provides expert services in Sustainable Infrastructure, Renewable Energy Solutions, Energy Management Consulting, Energy Procurement, and Real Estate Consulting Services.",
  ),
  FAQ(
    question: "What is Sustainable Infrastructure development?",
    answer:
        "It involves creating eco-friendly and resilient structures that balance environmental, economic, and social sustainability. Solevad Consulting designs infrastructure solutions that meet today's needs without compromising future generations.",
  ),
  FAQ(
    question: "How can Solevad Consulting assist with Renewable Energy projects?",
    answer:
        "We offer tailored renewable energy solutions including solar, wind, and hybrid systems — from feasibility studies to full project execution and support.",
  ),
  FAQ(
    question: "What is Energy Management Consulting?",
    answer:
        "We help organizations optimize their energy use through audits, strategies, and technologies that reduce costs and promote sustainable operations.",
  ),
  FAQ(
    question: "Can Solevad Consulting assist with Energy Procurement?",
    answer:
        "Yes, we guide businesses in sourcing reliable, cost-effective energy solutions, helping them negotiate contracts and manage supplier relationships efficiently.",
  ),
  FAQ(
    question: "Does Solevad Consulting offer Real Estate services?",
    answer:
        "Yes, our Real Estate Consulting Services help clients make informed investment decisions, optimize assets, and navigate complex property markets with confidence.",
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