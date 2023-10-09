// ignore_for_file: avoid_print

import 'dart:math';

import 'package:ch8/components/my_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:math_expressions/math_expressions.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
  var username = '';
  var reault = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              children: [
                Text(
                  username.toString(),
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  reault.toString(),
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Row(
                children: [
                  compunent(
                    title: 'AC',
                    onpress: () {
                      username = '';
                      reault = '';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '+/-',
                    onpress: () {
                      username += '+/-';
                      reault = '+/-';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '%',
                    onpress: () {
                      username += '%';
                      reault = '%';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '/',
                    color: const Color(0xFFFFA500),
                    onpress: () {
                      username += '/';
                      reault = '/';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  compunent(
                    title: '7',
                    onpress: () {
                      username += '7';
                      reault = '7';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '8',
                    onpress: () {
                      username += '8';
                      reault = '8';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '9',
                    onpress: () {
                      username += '9';
                      reault = '9';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: 'x',
                    color: const Color(0xFFFFA500),
                    onpress: () {
                      username += 'x';
                      reault = 'x';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  compunent(
                    title: '4',
                    onpress: () {
                      username += '4';
                      reault = '4';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '5',
                    onpress: () {
                      username += '5';
                      reault = '5';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '6',
                    onpress: () {
                      username += '6';
                      reault = '6';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '-',
                    color: const Color(0xFFFFA500),
                    onpress: () {
                      username += '-';
                      reault = '-';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  compunent(
                    title: '1',
                    onpress: () {
                      username += '1';
                      reault = '1';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '2',
                    onpress: () {
                      username += '2';
                      reault = '2';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '3',
                    onpress: () {
                      username += '3';
                      reault = '3';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '+',
                    color: const Color(0xFFFFA500),
                    onpress: () {
                      username += '+';
                      reault = '+';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  compunent(
                    title: '0',
                    onpress: () {
                      username += '0';
                      reault = '0';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '.',
                    onpress: () {
                      username += '.';
                      reault = '.';
                      setState(() {});
                    },
                  ),
                  compunent(
                    title: 'DEL',
                    onpress: () {
                      username = username.substring(0, username.length - 1);

                      setState(() {});
                    },
                  ),
                  compunent(
                    title: '=',
                    color: const Color(0xFFFFA500),
                    onpress: () {
                      equalpress();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        )
        // compunent(),
        // compunent(),
        // compunent(),
      ],
    );
  }

  void equalpress() {
    username = username.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(username);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    reault = eval.toString();
  }
}
