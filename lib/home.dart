import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 35,
                ),
                color: const Color(0xff9FE870),
                onPressed: () {
                  // go home
                },
              ),
            ),
            const SizedBox(height: 65),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Let us Find out,\nShall we?",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        // width: 160,
                        height: 208,
                        decoration: BoxDecoration(
                          color: const Color(0xff839776),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.all(8)),
                            RichText(
                              textAlign: TextAlign.left,
                              textDirection: TextDirection
                                  .ltr, // set text direction to rtl
                              text: const TextSpan(
                                text: 'Encode',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9FE870),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\nImage\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Color(0xff9FE870),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  // 2nd container for encode

                  child: Stack(
                    children: [
                      Container(
                        // width: 160,
                        height: 208,
                        decoration: BoxDecoration(
                          color: const Color(0xff839776),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.all(8)),
                            RichText(
                              textAlign: TextAlign.left,
                              textDirection: TextDirection
                                  .ltr, // set text direction to rtl
                              text: const TextSpan(
                                text: 'Decode',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9FE870),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\nImage\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Color(0xff9FE870),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            //recents
            Container(
              height: 82,
              width: 448,
              decoration: BoxDecoration(
                color: const Color(0xff839776),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Padding(padding: EdgeInsets.all(4)),
                  Positioned(
                    top: 28,
                    left: 28,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.history,
                        color: Color(0xff9FE870),
                        size: 24,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.fromLTRB(60, 0, 10, 0),
                    child: RichText(
                      textAlign: TextAlign.right,
                      textDirection:
                          TextDirection.ltr, // set text direction to rtl
                      text: const TextSpan(
                        text: 'Recents',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff9FE870),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nImage\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
