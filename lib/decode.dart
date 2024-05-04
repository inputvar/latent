import 'package:flutter/material.dart';

class DecodePage extends StatefulWidget {
  const DecodePage({Key? key}) : super(key: key);

  @override
  State<DecodePage> createState() => _DecodePageState();
}

class _DecodePageState extends State<DecodePage> {
  bool _isObscure = true;
  late final TextEditingController textEditingController;
  late final TextEditingController textEditingController1;
  final FocusNode textFocusNode = FocusNode();
  final FocusNode textFocusNode1 = FocusNode();

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textEditingController1 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                      ),
                      child: Text(" Decode",
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 640, // Adjusted to use available height
                      decoration: BoxDecoration(
                        color: const Color(0x6E839776),
                        border: Border.all(color: Colors.blue),
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                height: 330,
                                width: 330,
                                decoration: BoxDecoration(
                                  color: const Color(0x66163300),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Upload images from files",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xffA5C58D)),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.black,
                                      ),
                                      label: const Text('Upload',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(127, 48),
                                        backgroundColor:
                                            const Color(0xff9FE870),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: (20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    textFocusNode1
                                        .requestFocus(); // Manually focus on the TextField
                                  },
                                  child: Container(
                                    height: 48,
                                    width: 330,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(110, 22, 51, 0),
                                      border: Border.all(
                                        width: 3,
                                        color: textFocusNode1.hasFocus
                                            ? Colors.white
                                            : Colors
                                                .transparent, // Change the border color when focused
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            controller: textEditingController1,
                                            focusNode:
                                                textFocusNode1, // Connect the focus node
                                            obscureText: _isObscure,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Password',
                                              hintStyle: TextStyle(
                                                color: Color(0xFFA5C58D),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                horizontal: 13,
                                                vertical: 13,
                                              ),
                                            ),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            _isObscure
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: (120),
                          ),
                          Container(
                            width: 172,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0x829FE870),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: (20),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              // Handle button click here
                            },
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  // Handle button click here
                                },
                                child: Container(
                                  width: 330,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF9FE870),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color(0x993B3B3B), // Shadow color
                                        offset: Offset(0, 3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Decode Image',
                                      style: TextStyle(
                                        color: Color(0xFF44503B),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
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
