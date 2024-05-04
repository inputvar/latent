import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  String currentFilter = 'all';

  @override
  Widget build(BuildContext context) {
    List<CustomCard> encodedCards = List.generate(
        30, (index) => CustomCard(index: index, cardType: 'encoded'));
    List<CustomCard> decodedCards = List.generate(
        30, (index) => CustomCard(index: index, cardType: 'decoded'));

    List<CustomCard> filteredCards = [];
    if (currentFilter == 'all') {
      filteredCards = List.from(encodedCards)..addAll(decodedCards);
    } else if (currentFilter == 'encoded') {
      filteredCards = encodedCards;
    } else if (currentFilter == 'decoded') {
      filteredCards = decodedCards;
    }

    return Scaffold(
      body: Container(
        height: 500, // Set your desired fixed height
        color: Colors.grey[200], // Set your desired background color
        child: Column(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 32,
              ),
              color: const Color(0xff9FE870),
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
            ),
            Container(
              height: 200, // Set your desired fixed header height
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentFilter = 'all';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          currentFilter == 'all' ? Colors.blue : Colors.white,
                      backgroundColor:
                          currentFilter == 'all' ? Colors.white : Colors.blue,
                    ),
                    child: const Text('All'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentFilter = 'encoded';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: currentFilter == 'encoded'
                          ? Colors.blue
                          : Colors.white,
                      backgroundColor: currentFilter == 'encoded'
                          ? Colors.white
                          : Colors.blue,
                    ),
                    child: const Text('Encoded'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentFilter = 'decoded';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: currentFilter == 'decoded'
                          ? Colors.blue
                          : Colors.white,
                      backgroundColor: currentFilter == 'decoded'
                          ? Colors.white
                          : Colors.blue,
                    ),
                    child: const Text('Decoded'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCards.length,
                itemBuilder: (BuildContext context, int index) {
                  return filteredCards[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final int index;
  final String cardType;

  const CustomCard({super.key, required this.index, this.cardType = 'all'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 210,
              width: 330,
              decoration: BoxDecoration(
                color: const Color(0x75131512),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      const Text(
                        "Imag1.png",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffA5C58D)),
                      ),
                      Container(
                        width: 175,
                        height: 175,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/175x175"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {}, // Handle your callback

                        child: Container(
                          width: 98,
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF232820),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Details',
                              style: TextStyle(
                                color: Color(0xFF9FE870),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {}, // Handle your callback

                        child: Container(
                          width: 98,
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF232820),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Share',
                              style: TextStyle(
                                color: Color(0xFF9FE870),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {}, // Handle your callback

                        child: Container(
                          width: 98,
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF232820),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Delete',
                              style: TextStyle(
                                color: Color(0xFFCB2020),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
