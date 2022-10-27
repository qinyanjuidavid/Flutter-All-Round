import 'package:flutter/material.dart';
import 'package:pro1/widgets/footer.dart';

class StateFullScreen extends StatefulWidget {
  final int id;
  const StateFullScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<StateFullScreen> createState() => _StateFullScreenState();
}

class _StateFullScreenState extends State<StateFullScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const Text(
            "Statefull Widget",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      print(widget.id);
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                  ),
                ),
                Text(
                  "${widget.id}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      print(widget.id);
                    });
                  },
                  icon: const Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: const FooterWidget(),
      ),
    );
  }
}
