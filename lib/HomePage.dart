import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/base/button.dart';
import 'package:flutter_application_1/base/card.dart';
import 'package:flutter_application_1/base/navbar.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tinycolor2/tinycolor2.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final PageController _pageController = PageController(initialPage: 0);
  // int selectedIndex = 0;
  @override
  void dispose() {
    // _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[
        Color.fromRGBO(255, 255, 255, 0.24),
        Color.fromRGBO(255, 255, 255, 0.6),
      ],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    final List<NavItem> _navItems = [
      NavItem(
        icon: Icon(
          LineAwesomeIcons.compass,
          color: Colors.grey[600],
          size: 40,
        ),
        onPress: () {},
      ),
      NavItem(
        icon: Icon(
          LineAwesomeIcons.wallet,
          color: Colors.grey[600],
          size: 40,
        ),
        onPress: () {},
      ),
      NavItem(
        icon: Icon(
          Icons.sms_rounded,
          color: Colors.grey[600],
          size: 40,
        ),
        onPress: () {},
      ),
      NavItem(
        icon: Icon(
          Icons.person,
          color: Colors.grey[600],
          size: 40,
        ),
        onPress: () {},
      ),
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              BaseCard(
                color: Colors.white.withOpacity(0),
                padding:
                    const EdgeInsets.fromLTRB(0, Constants.sm, 0, Constants.sm),
                margin: const EdgeInsets.fromLTRB(
                    Constants.md, Constants.xl, Constants.md, Constants.lg),
                radius: Constants.md,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Hello Bradly',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Your orned \$892.20 for this month',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Constants.xl),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 253, 0, 198),
                                Color.fromARGB(255, 160, 45, 253),
                                Color.fromARGB(255, 78, 29, 255),
                                Color.fromARGB(255, 0, 38, 255),
                                Color.fromARGB(255, 0, 38, 255),
                                Color.fromARGB(255, 122, 142, 253),
                              ])),
                          child: BaseButton(
                            color: Colors.white.withOpacity(0),
                            radius: 20,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BuyPage()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '\$VVS ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Column(
                                  children: const [
                                    Icon(
                                      LineAwesomeIcons
                                          .alternate_arrows_horizontal,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                const Text(
                                  ' \$',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                            padding: const EdgeInsets.fromLTRB(Constants.lg,
                                Constants.sm, Constants.lg, Constants.sm),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              BaseCard(
                color: const Color.fromRGBO(42, 42, 52, 1),
                margin: const EdgeInsets.fromLTRB(
                    Constants.md, Constants.sm, Constants.md, Constants.sm),
                radius: Constants.md,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(Constants.md,
                          Constants.sm, Constants.md, Constants.sm),
                      child: Row(
                        children: [
                          Text(
                            'Balanse (\$VVS)',
                            style: TextStyle(
                                fontFamily: 'HeliosExtC',
                                fontSize: 20,
                                foreground: Paint()..shader = linearGradient),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                          Constants.md, Constants.md, 0, Constants.md),
                      child: Row(
                        children: const [
                          Text('0.32351',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: 'Monoska',
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(Constants.md),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(Constants.md),
                          bottomRight: Radius.circular(Constants.md),
                        ),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(157, 190, 222, 1),
                              Color.fromRGBO(239, 207, 196, 1),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'In dollars',
                                style: TextStyle(
                                    color: Color.fromRGBO(22, 18, 18, 0.6)),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                '\$281.1',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(22, 18, 18, 0.6)),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(
                    Constants.sm, Constants.sm, Constants.sm, 0),
                margin: const EdgeInsets.fromLTRB(
                    Constants.sm, Constants.sm, Constants.md, 0),
                child: Row(
                  children: const [
                    Text(
                      'Frequent transaction',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: TinyColor(
                                        const Color.fromRGBO(96, 71, 250, 1))
                                    .darken(20)
                                    .color
                                    .withOpacity(0.3),
                                blurRadius: 30,
                                // offset: const Offset(3, 3),
                              ),
                              BoxShadow(
                                color: TinyColor(
                                        const Color.fromRGBO(96, 71, 250, 1))
                                    .lighten(10)
                                    .color
                                    .withOpacity(0.3),
                                blurRadius: 30,
                                // offset: const Offset(-2, -2),
                              ),
                            ],
                            color: const Color.fromRGBO(96, 71, 250, 1),
                            borderRadius: BorderRadius.circular(Constants.xl),
                          ),
                          margin: const EdgeInsets.fromLTRB(Constants.md,
                              Constants.lg, Constants.md, Constants.sm),
                          width: 55,
                          height: 55,
                          child: IconButton(
                            icon: const Icon(
                              LineAwesomeIcons.telegram,
                              color: Colors.white,
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const Text(
                          'Send',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      child: VerticalDivider(
                        indent: 30,
                        endIndent: 60,
                        width: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(Constants.xl),
                            ),
                            margin: const EdgeInsets.fromLTRB(Constants.md,
                                Constants.lg, Constants.md, Constants.sm),
                            width: 55,
                            height: 55,
                          ),
                        ),
                        const Text(
                          'Mathey',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(Constants.xl),
                            ),
                            margin: const EdgeInsets.fromLTRB(Constants.md,
                                Constants.lg, Constants.md, Constants.sm),
                            width: 55,
                            height: 55,
                          ),
                        ),
                        const Text(
                          'Bradly',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(Constants.xl),
                            ),
                            margin: const EdgeInsets.fromLTRB(Constants.md,
                                Constants.lg, Constants.md, Constants.sm),
                            width: 55,
                            height: 55,
                          ),
                        ),
                        const Text(
                          'Mathey',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(Constants.xl),
                            ),
                            margin: const EdgeInsets.fromLTRB(Constants.md,
                                Constants.lg, Constants.md, Constants.sm),
                            width: 55,
                            height: 55,
                          ),
                        ),
                        const Text(
                          'Bradly',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(
                      LineAwesomeIcons.horizontal_ellipsis,
                      color: Colors.white,
                      size: 30,
                    ),
                    BaseCard(
                      // color: Colors.black.w,
                      radius: Constants.lg,
                      child: Column(
                        children: [
                          BaseCard(
                            radius: Constants.md,
                            child: Container(
                              height: 120,
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    width: MediaQuery.of(context).size.width,
                                    child: BaseCard(
                                      color:
                                          const Color.fromRGBO(42, 42, 52, 1),
                                      radius: Constants.md,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                Constants.md,
                                                Constants.md,
                                                Constants.md,
                                                0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'TRANSACTION HISTORY',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white70),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      LineAwesomeIcons.filter,
                                                      color: Colors.white70,
                                                    ))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                EdgeInsets.all(Constants.md),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  // color: Colors.white,
                                                  decoration: BoxDecoration(
                                                    color: Colors.yellow,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Constants.xl),
                                                  ),
                                                  height: 50,
                                                  width: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Transfer',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          '15 september',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white70),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: const [
                                                      Text(
                                                        '+ 3',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        '\$VVS',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.white70),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    top: 0,
                                  ),
                                  Positioned(
                                    width: MediaQuery.of(context).size.width,
                                    child: BaseCard(
                                      color:
                                          const Color.fromRGBO(14, 14, 19, 1),
                                      radius: Constants.md,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.all(Constants.md),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  // color: Colors.white,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Constants.xl),
                                                  ),
                                                  height: 50,
                                                  width: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Invited',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          '4 march',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white70),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: const [
                                                      Text(
                                                        '+ 1',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        '\$VVS',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    top: 130,
                                  ),
                                  Positioned(
                                    width: MediaQuery.of(context).size.width,
                                    child: BaseCard(
                                      color: Colors.grey.shade800,
                                      radius: Constants.md,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.all(Constants.md),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Constants.xl),
                                                  ),
                                                  height: 50,
                                                  width: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Invited',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          '4 march',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white70),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: const [
                                                      Text(
                                                        '+ 1',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        '\$VVS',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    top: 200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            child: Container(
              // padding: EdgeInsets.all(0),
              margin: const EdgeInsets.fromLTRB(
                  Constants.md, Constants.md, Constants.md, Constants.md),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 73, 80, 88),
                    Color.fromARGB(255, 85, 50, 48)
                  ],
                ),
              ),
              child: Navbar(
                children: _navItems,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
