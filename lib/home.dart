import 'package:flutter/material.dart';
import 'package:latent/encode.dart';
import 'package:latent/decode.dart';
import 'package:latent/recentpage.dart';
import 'package:latent/scroll.dart';
import 'package:latent/stegpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131512),
      body: Container(
        padding: const EdgeInsets.all(23),
        child: Column(
          children: <Widget>[
            //add inkwell here

            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 35,
                ),
                color: const Color.fromARGB(255, 98, 101, 97),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StegPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 65),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(" Let's find out,\n Shall we?",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EncodePage()),
                          );
                        }, // Handle your callback
                        child: Container(
                          width: double.infinity,
                          height: 228,
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
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9FE870),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '\nImage\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Color(0xffA5C58D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Container(
                          width: 50,
                          height: 50,
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
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DecodePage()),
                          );
                        }, // Handle your callback
                        child: Container(
                          width: double.infinity,
                          height: 228,
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
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9FE870),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '\nImage\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Color(0xffA5C58D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_downward,
                            color: Color(0xff9FE870),
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const Divider(
              color: Color(0x809FE870),
              height: 55,
              thickness: 1,
              indent: 90,
              endIndent: 90,
            ),

            //recents
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecentPage()),
                );
              }, // Handle your callback
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 82,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.all(4)),
                    Positioned(
                      top: 18,
                      right: 58,
                      child: Container(
                        width: 50,
                        height: 50,
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
                          size: 28,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(6),
                      child: RichText(
                        textAlign: TextAlign.right,
                        textDirection:
                            TextDirection.ltr, // set text direction to rtl
                        text: const TextSpan(
                          text: 'Recents',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9FE870),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
