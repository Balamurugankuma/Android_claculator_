import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = " ";
  String operator = "";
  String A = "";
  String B = "";
  String result = "";
  late double val;

  void operation() {
    B = value.substring(A.length + 1, value.length);

    switch (operator) {
      case "+":
        double num1 = double.parse(A);
        double num2 = double.parse(B);
        val = (num1 + num2);
        setState(() {
          value = "";

          value = '$val';
        });

        break;
      case "-":
        double num1 = double.parse(A);
        double num2 = double.parse(B);
        val = (num1 - num2);
        setState(() {
          value = "";
          value = '$val';
        });

        break;
      case "*":
        double num1 = double.parse(A);
        double num2 = double.parse(B);
        val = (num1 * num2);
        setState(() {
          value = "";
          value = '$val';
        });

        break;
      case "/":
        double num1 = double.parse(A);
        double num2 = double.parse(B);
        val = (num1 / num2);
        setState(() {
          value = "";
          value = '$val';
        });

        break;
      case "%":
        {
          double num1 = double.parse(A);

          val = 0.01 * num1;
          setState(() {
            value = "";
            value = '$val';
          });

          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Calculator'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.5,
                ),
              ),
              child: Text(
                value,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "1";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "2";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "3";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        A = value;
                        operator = "+";
                        value += "+";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(80, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "4";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "5";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "6";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '6',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        A = value;
                        operator = "-";
                        value += "-";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(80, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "7";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '7',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "8";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '8',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "9";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '9',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        A = value;
                        operator = "*";
                        value += "*";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(80, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '*',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += ".";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        A = value;
                        operator = "%";
                        value += "%";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value += "0";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        A = value;
                        operator = "/";
                        value += "/";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(80, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '/',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value = value.substring(0, value.length - 1);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      'DEL',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value = "";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      'AC',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: operation,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(190, 60),
                      elevation: 16.0,
                    ),
                    child: const Text(
                      '=',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
