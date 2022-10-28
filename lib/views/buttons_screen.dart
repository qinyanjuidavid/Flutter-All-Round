import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const Text(
            "Buttons",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 3,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated Button",
                style: TextStyle(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 3,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      print(states);
                      return Colors.red.withOpacity(0.04);
                    } else if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed)) {
                      print(states);
                      return Colors.black.withOpacity(0.12);
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Text Button",
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.red,
                onSurface: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Text Button Two",
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("No"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Yes"),
                )
              ],
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                "Material Button",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
