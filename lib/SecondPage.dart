import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/card.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';

class BuyPage extends StatefulWidget {
  BuyPage({Key? key}) : super(key: key);

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  final GlobalKey<SlideActionState> _key = GlobalKey();

  @override
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromRGBO(255, 255, 255, 0.24),
      Color.fromRGBO(255, 255, 255, 0.6),
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 28, 1),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(
              Constants.lg, Constants.xl, Constants.lg, Constants.lg),
          child: Container(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          LineAwesomeIcons.arrow_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [
                          Text(
                            'Buy \$VVS',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(
                      0, Constants.lg, 0, Constants.sm),
                  child: Row(
                    children: const [
                      Text(
                        'Payment method',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                BaseCard(
                    padding: const EdgeInsets.all(Constants.md),
                    margin: const EdgeInsets.only(bottom: Constants.md),
                    color: const Color.fromRGBO(42, 42, 52, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: const [
                                Icon(LineAwesomeIcons.circle_1,
                                    color: Colors.white),
                                Icon(LineAwesomeIcons.circle_1,
                                    color: Colors.white),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '8600 **** **** 1234',
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 15),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  '06/24',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              child: const Text(
                                'change',
                                style: TextStyle(color: Colors.white60),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                    radius: Constants.md),
                Container(
                  padding: const EdgeInsets.only(top: Constants.md),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(bottom: Constants.md),
                            child: Row(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 60, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      ' \$VVS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: Constants.lg),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 30),
                                ),
                                Text(
                                  ' USD',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.all(Constants.md),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '2',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.xl,
                                            Constants.md),
                                        child: const Text(
                                          '3',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.all(Constants.md),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '4',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '5',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.xl,
                                            Constants.md),
                                        child: const Text(
                                          '6',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.all(Constants.md),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '7',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '8',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.xl,
                                            Constants.md),
                                        child: const Text(
                                          '9',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.all(Constants.md),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '.',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.lg,
                                            Constants.md),
                                        child: const Text(
                                          '0',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            Constants.xl,
                                            Constants.md,
                                            Constants.xl,
                                            Constants.md),
                                        child: const Text(
                                          'X',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
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
                Container(
                  margin: EdgeInsets.fromLTRB(Constants.md, 0, Constants.md, 0),
                  padding: const EdgeInsets.fromLTRB(
                      Constants.lg, Constants.xl, Constants.lg, 0),
                  child: SlideAction(
                    textStyle: TextStyle(
                      fontSize: 15,
                      foreground: Paint()..shader = linearGradient,
                      // color: Colors.white,
                    ),
                    text: 'slide to buy',
                    sliderButtonIcon: const Icon(
                      LineAwesomeIcons.grip_lines_vertical,
                      size: 15,
                      color: Colors.white,
                    ),
                    sliderButtonIconSize: 15,
                    height: 55,
                    key: _key,
                    innerColor: const Color.fromARGB(255, 153, 96, 245),
                    onSubmit: () {
                      Future.delayed(
                        Duration(seconds: 1),
                        () => _key.currentState?.reset(),
                      );
                    },
                    submittedIcon: const Icon(
                      Icons.done_all,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
