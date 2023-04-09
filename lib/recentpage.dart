import 'package:flutter/material.dart';

class Recent_page extends StatefulWidget {
  const Recent_page({super.key});

  @override
  State<Recent_page> createState() => _Recent_pageState();
}

class _Recent_pageState extends State<Recent_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
                color: const Color(0xff9FE870),
                onPressed: () {
                  // go home
                },
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Recents",
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.all(8),
                    icon: const Icon(Icons.info_outline,
                        color: Color.fromARGB(255, 178, 190, 177), size: 30))
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 20,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        color: const Color(0xff839776),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Positioned(
                            top: 0,
                            bottom: 320,
                            left: 17,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromARGB(150, 74, 153, 119),

                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                    minimumSize:
                                        const Size(50, 40), //////// HERE
                                  ),
                                  onPressed: () {},
                                  child: const Text('All'),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromARGB(150, 74, 153, 119),

                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                    minimumSize:
                                        const Size(50, 40), //////// HERE
                                  ),
                                  onPressed: () {},
                                  child: const Text('Encode'),
                                ),
                                const SizedBox(width: 10),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromARGB(150, 74, 153, 119),

                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                    minimumSize:
                                        const Size(50, 40), //////// HERE
                                  ),
                                  onPressed: () {},
                                  child: const Text('Decode'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff163300),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff163300),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
