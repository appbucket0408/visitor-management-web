import 'package:flutter/material.dart';

import '../const/textStyle.dart';

class VisitorEntry extends StatefulWidget {
  const VisitorEntry({super.key});

  @override
  State<StatefulWidget> createState() {
    return _visitorEntryState();
  }
}

class _visitorEntryState extends State<VisitorEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Visitor Entry'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ]),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.52,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(children: [
                      CircleAvatar(
                        radius: 30, // Adjust the size as needed
                        backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150', // Replace with actual image URL
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                              height: 4), // Space between name and subtitle
                          Text(
                            "Guest of 'ex-304'",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          const Text(
                            "Arrival Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                              height: 8), // Spacing between title and content
                          Row(
                            children: [
                              // Bullet Point
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                  width: 8), // Spacing between bullet and text
                              // Time and Date Column
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "6:00pm",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          4), // Spacing between time and date
                                  Text(
                                    "Tuesday, January 4",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('House Rules', style: TextStyles.bold),
                    ),
                    const SizedBox(height: 5),
                    const InfoCard(
                      icon: Icons.abc,
                      text: 'No smoking in the building',
                    ),
                    const SizedBox(height: 10),
                    const InfoCard(
                      icon: Icons.abc,
                      text: 'Masks are required',
                    ),
                    const SizedBox(height: 10),
                    const InfoCard(
                      icon: Icons.abc,
                      text: 'No pets allowed',
                    ),
                    const SizedBox(height: 20),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Deny Entry'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Approve'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: Colors.black,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(text, style: TextStyles.bold),
          ),
        ],
      ),
    );
  }
}
