import 'package:flutter/material.dart';

class Encode_page extends StatefulWidget {
  const Encode_page({super.key});

  @override
  State<Encode_page> createState() => _Encode_pageState();
}

class _Encode_pageState extends State<Encode_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131512),
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
                  child: Text(" Encode",
                      style: Theme.of(context).textTheme.titleLarge),
                ),
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
                        color: const Color(0x6E839776),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x33A5FF6A),
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
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                height: 320,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0x66163300),
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
