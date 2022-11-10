import 'package:flutter/material.dart';

import 'components/constants.dart';

class IconAndDetails extends StatefulWidget {
  const IconAndDetails({Key? key}) : super(key: key);

  @override
  State<IconAndDetails> createState() => _IconAndDetailsState();
}

class _IconAndDetailsState extends State<IconAndDetails> {
  int _num = 0;
  String description =
      'The grilling process cooks foods over a high heat source, either directly,\n indirectly, or a combination of both. Grilling temperatures typically \nreach as high as 650ºF, but any temperature above 300°F is suitable as\n a grilling temperature. As with any cooking method, grilled beef\n should not be overcooked in order to produce the best results\n';

  void _incrementCounter() {
    setState(() {
      _num++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_num > 0) {
        _num--;
      } else {
        _num = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const CircleAvatar(
          radius: 160,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            'assets/frid chicken.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Grilled Meet Plate \n',
                      style: TextStyle(
                          color: KTextcolor.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    TextSpan(
                      text: 'Rate',
                      style: TextStyle(
                          color: KTextcolor.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  '\$55\n',
                  style: TextStyle(
                    color: KTextcolor.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 20),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 6),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/fire.jpg'),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '341 calories',
                  style: TextStyle(
                    color: KTextcolor.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 6, left: 20),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/Delivery.png'),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '30-40 delivery',
                  style: TextStyle(
                    color: KTextcolor.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0x00f9ca60).withOpacity(1.0),
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _decrementCounter,
                        icon: const Icon(Icons.remove),
                      ),
                      Text('$_num'),
                      IconButton(
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Details \n\n',
                        style: TextStyle(
                            color: KTextcolor.withOpacity(1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      TextSpan(
                        text: description,
                        style: TextStyle(
                            color: KTextcolor.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
