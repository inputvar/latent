import 'package:flutter/material.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({Key? key}) : super(key: key);

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
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
      backgroundColor: const Color(0xff131512),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
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
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Recent",
                        style: Theme.of(context).textTheme.titleLarge),
                    IconButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(8),
                        icon: const Icon(
                          Icons.info_outline,
                          color: Color.fromARGB(255, 92, 98, 92),
                          size: 30,
                        ))
                  ],
                ),
                Container(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 60, // Adjusted to use available height
                      decoration: BoxDecoration(
                        color: const Color(0x6E839776),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33A5FF6A),
                            blurRadius: 40.0,
                            spreadRadius: 0,
                            offset: Offset(
                              -2,
                              0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 40,

                        // Set your desired fixed header height
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentFilter = 'all';
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: currentFilter == 'all'
                                        ? const Color(0xFF232820)
                                        : const Color(0x50232820),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'All',
                                      style: TextStyle(
                                        color: currentFilter == 'all'
                                            ? Colors.white
                                            : const Color(0xffA5C58D),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentFilter = 'encoded';
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: currentFilter == 'encoded'
                                        ? const Color(0xFF232820)
                                        : const Color(0x50232820),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Encoded',
                                      style: TextStyle(
                                        color: currentFilter == 'encoded'
                                            ? Colors.white
                                            : const Color(0xffA5C58D),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentFilter = 'decoded';
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: currentFilter == 'decoded'
                                        ? const Color(0xFF232820)
                                        : const Color(0x50232820),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Decoded',
                                      style: TextStyle(
                                        color: currentFilter == 'decoded'
                                            ? Colors.white
                                            : const Color(0xffA5C58D),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 550, // Adjusted to use available height
                      decoration: BoxDecoration(
                        color: const Color(0x6E839776),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33A5FF6A),
                            blurRadius: 40.0,
                            spreadRadius: 0,
                            offset: Offset(
                              -2,
                              0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
      height: 100.0,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: cardType == 'encoded'
            ? Colors.green
            : cardType == 'decoded'
                ? Colors.orange
                : Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          'Card $index (${cardType.capitalize()})',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
