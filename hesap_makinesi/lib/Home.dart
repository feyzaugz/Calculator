import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController tf1 = TextEditingController();
  final TextEditingController tf2 = TextEditingController();
  final TextEditingController res = TextEditingController();

  var num1 = 0;
  var num2 = 0;
  var result = 0;
  var operator = '';

  void resultFunc() {
    setState(() {
      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          result = num1 ~/ num2;
          break;
      }
    });
  }

  void add() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      operator = '+';
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      operator = '-';
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      operator = '/';
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      operator = '*';
    });
  }

  void clear() {
    setState(() {
      tf1.text = "0";
      tf2.text = "0";
      res.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              decoration: InputDecoration.collapsed(hintText: '$result'),
              controller: res,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter number 1"),
              controller: tf1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter Number 2"),
              controller: tf2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: clear,
                      minWidth: 90,
                      height: 90,
                      color: const Color.fromARGB(255, 119, 117, 117),
                      child: const Text(
                        'AC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      height: 90,
                      onPressed: div,
                      color: Colors.orange[500],
                      child: const Text(
                        '/',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  onPressed: mul,
                  color: Colors.orange[500],
                  child: const Text(
                    'x',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  onPressed: sub,
                  color: Colors.orange[500],
                  child: const Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  onPressed: add,
                  color: Colors.orange[500],
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  minWidth: 90,
                  height: 90,
                  onPressed: resultFunc,
                  color: Colors.orange[500],
                  child: const Text(
                    '=',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                )
              ],
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     MaterialButton(
            //       onPressed: add,
            //       color: Colors.greenAccent,
            //       child: const Text('+'),
            //     ),
            //     MaterialButton(
            //       onPressed: sub,
            //       color: Colors.greenAccent,
            //       child: const Text('-'),
            //     ),
            //   ],
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 20.0),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     MaterialButton(
            //       onPressed: mul,
            //       color: Colors.greenAccent,
            //       child: const Text('*'),
            //     ),
            //     MaterialButton(
            //       onPressed: div,
            //       color: Colors.greenAccent,
            //       child: const Text('/'),
            //     ),
            //   ],
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 20.0),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     MaterialButton(
            //       onPressed: clear,
            //       color: Colors.greenAccent,
            //       child: const Text('Clear'),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
